import UIKit
import PlaygroundSupport

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Option 1
        
        let first: GradientView = {
            let colors = [#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1).cgColor, #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1).cgColor]
            return GradientView(colors, .leftRight)
        }()
        first.frame = view.bounds
        
        view.addSubview(first)
        
        let second: GradientView = {
            let colors = [UIColor.purple.cgColor, UIColor.clear.cgColor]
            let coordinates = Coordinates(x: CGPoint(x: 0.2, y: 1), y: CGPoint(x: 0.7, y: 0))
            return GradientView(colors, coordinates)
        }()
        second.frame = view.bounds
        
        view.addSubview(second)
        
        /* - Option 2
 
        let colors = [
            UIColor.black.cgColor,
            UIColor.white.cgColor
        ]
        
        let gradientView = GradientView(colors, .rightLeft)
        gradientView.frame = view.bounds
        
        view.addSubview(gradientView)
 
         */
        
        /* - Option 3
        
        let colors = [
            UIColor.black.cgColor,
            UIColor.white.cgColor
        ]
        
        let coordinates = Coordinates(
            x: CGPoint(x: 0.2, y: 1),
            y: CGPoint(x: 0.7, y: 0)
        )
        let gradientView = GradientView(colors, coordinates)
        gradientView.frame = view.bounds
        
        view.addSubview(gradientView)
 
         */
    }
}

PlaygroundPage.current.liveView = ViewController()
