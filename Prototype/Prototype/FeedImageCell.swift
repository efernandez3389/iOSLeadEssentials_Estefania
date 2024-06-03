//
//  FeedImageCell.swift
//  Prototype
//
//  Created by Estefania Fernandez on 2/6/24.
//

import UIKit

final class FeedImageCell: UITableViewCell {
    @IBOutlet private(set) var locationContainer: UIView!
    @IBOutlet private(set) var locationLabel: UILabel!
    @IBOutlet private(set) var feedImageContainer: UIView!
    @IBOutlet private(set) var feedImageView: UIImageView!
    @IBOutlet private(set) var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        feedImageView.alpha = 0
        feedImageContainer.isShimmering = true
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        feedImageView.alpha = 0
        feedImageContainer.isShimmering = true
    }
    
    func fadeIn(_ image: UIImage?) {
        feedImageView.image = image
        
        UIView.animate(
            withDuration: 0.25,
            delay: 1.25,
            options: [],
            animations:  {
                self.feedImageView.alpha = 1
            }) { completed in
                if completed {
                    self.feedImageContainer.isShimmering = false
                }
            }
    }
}

extension UIView {
    public var isShimmering: Bool {
        set {
            if newValue {
                startShimmering()
            } else {
                stopShimmering()
            }
        }
        
        get {
            layer.mask is ShimmeringLayer
        }
    }
    
    private func startShimmering() {
        layer.mask = ShimmeringLayer(size: bounds.size)
    }
    
    private func stopShimmering() {
        layer.mask = nil
    }
    
    private class ShimmeringLayer: CAGradientLayer {
        private var observer: Any?
        
        convenience init(size: CGSize) {
            self.init()
            
            let white = UIColor.white.cgColor
            let alpha = UIColor.white.withAlphaComponent(0.75).cgColor
            
            colors = [alpha, white, alpha]
            startPoint = CGPoint(x: 0.0, y: 0.4)
            endPoint = CGPoint(x: 1.0, y: 0.6)
            locations = [0.4, 0.5, 0.6]
            frame = CGRect(x: -size.width, y: 0, width: size.width*3, height: size.height)
            
            let animation = CABasicAnimation(keyPath: #keyPath(CAGradientLayer.locations))
            animation.fromValue = [0.0, 0.1, 0.2]
            animation.toValue = [0.8, 0.9, 1.0]
            animation.duration = 1.25
            animation.repeatCount = .infinity
            add(animation, forKey: "shimmer")
            
            observer = NotificationCenter.default.addObserver(forName: UIApplication.willEnterForegroundNotification, object: nil, queue: nil) { [weak self] _ in
                self?.add(animation, forKey: "shimmer")
            }
        }
    }
}
