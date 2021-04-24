# Gradient

[This blog post](https://medium.com/ios-os-x-development/swift-3-easy-gradients-54ccc9284ce4) is a great read and I wanted to use the code they talk about there. I suggested they upload the code to the open-source community, but I got no response. So I have taken the code directly from that blog post and uploaded it here, for all to use.

## Usage

```swift
import UIKit
import Gradient

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /* - Option 1
 
        let colors = [
            UIColor.black.cgColor,
            UIColor.white.cgColor
        ]
        
        let gradientView = GradientView(colors, .rightLeft)
        gradientView.frame = view.bounds
        
        view.addSubview(gradientView)
 
         */
        
        /* - Option 2
        
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
        
        // Option 3
        
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
    }
}
```
