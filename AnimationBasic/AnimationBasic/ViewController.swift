
import UIKit

class ViewController: UIViewController {
    let layer: CALayer = {
        let layer = CALayer()
        layer.backgroundColor = UIColor.systemRed.cgColor
        layer.frame = CGRect(x: 100, y: 100, width: 120, height: 120)
        return layer
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.layer.addSublayer(layer)
        
        DispatchQueue.main.asyncAfter(deadline: .now()+1) {
            self.animateMovement()
            self.animateOpacity()
        }
    }
    
    func animateMovement(){
       let animation = CABasicAnimation(keyPath: "position")
        animation.fromValue = CGPoint(x: layer.frame.origin.x + (layer.frame.size.width/2),
        y: layer.frame.origin.y + (layer.frame.size.height/2))
        animation.toValue = CGPoint(x: 300, y: 400)
        animation.duration = 3
        animation.fillMode = .forwards
        animation.isRemovedOnCompletion = false
        animation.beginTime = CACurrentMediaTime()
        layer.add(animation, forKey: nil)
    }
    

    func animateOpacity(){
        let animation = CABasicAnimation(keyPath: "opacity")
        animation.fromValue = 1
        animation.toValue = 0
        animation.duration = 3
        animation.beginTime = CACurrentMediaTime()
        animation.fillMode = .forwards
        animation.isRemovedOnCompletion = false
        layer.add(animation, forKey: nil)
    }
    
}

