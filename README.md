# This repository is no longer maintained

[This blog post](https://medium.com/ios-os-x-development/swift-3-easy-gradients-54ccc9284ce4) is a great read and I wanted to use the code they talk about there. I suggested they upload the code to the open-source community, but I got no response. So I have taken the code directly from that blog post and uploaded it here, for all to use.

## Usage

```swift
let colors = [
    UIColor.black.cgColor,
    UIColor.white.cgColor
]

let gradientView = GradientView(colors, .rightLeft)
```
