import UIKit

public typealias Coordinates = (x: CGPoint, y: CGPoint)

public enum GradientPoint {
    case leftRight
    case rightLeft
    case topBottom
    case bottomTop
    case topLeftBottomRight
    case bottomRightTopLeft
    case topRightBottomLeft
    case bottomLeftTopRight
    
    public var coordinates: Coordinates {
        switch self {
        case .leftRight:
            return (x: CGPoint(x: 0, y: 0.5), y: CGPoint(x: 1, y: 0.5))
        case .rightLeft:
            return (x: CGPoint(x: 1, y: 0.5), y: CGPoint(x: 0, y: 0.5))
        case .topBottom:
            return (x: CGPoint(x: 0.5, y: 0), y: CGPoint(x: 0.5, y: 1))
        case .bottomTop:
            return (x: CGPoint(x: 0.5, y: 1), y: CGPoint(x: 0.5, y: 0))
        case .topLeftBottomRight:
            return (x: CGPoint(x: 0, y: 0), y: CGPoint(x: 1, y: 1))
        case .bottomRightTopLeft:
            return (x: CGPoint(x: 1, y: 1), y: CGPoint(x: 0, y: 0))
        case .topRightBottomLeft:
            return (x: CGPoint(x: 1, y: 0), y: CGPoint(x: 0, y: 1))
        case .bottomLeftTopRight:
            return (x: CGPoint(x: 0, y: 1), y: CGPoint(x: 1, y: 0))
        }
    }
}

public class GradientView: UIView {
    
    public convenience init(_ colors: [CGColor], _ point: GradientPoint) {
        self.init(frame: .zero)
        gradientLayer.colors = colors
        gradientLayer.coordinates = point.coordinates
    }
    
    public convenience init(_ colors: [CGColor], _ coordinates: Coordinates) {
        self.init(frame: .zero)
        gradientLayer.colors = colors
        gradientLayer.coordinates = coordinates
    }
    
    override public class var layerClass: Swift.AnyClass {
        get {
            return GradientLayer.self
        }
    }
    
    public func updateColors( _ colors: [CGColor]) {
        gradientLayer.colors = colors
    }
}

public protocol GradientViewProvider {
    associatedtype GradientViewType
}

extension GradientViewProvider where Self: UIView {
    public var gradientLayer: Self.GradientViewType {
        return layer as! Self.GradientViewType
    }
}

extension UIView: GradientViewProvider {
    public typealias GradientViewType = GradientLayer
}

public class GradientLayer : CAGradientLayer {
    public var coordinates: Coordinates? {
        didSet {
            startPoint = coordinates?.x ?? CGPoint.zero
            endPoint = coordinates?.y ?? CGPoint.zero
        }
    }
}
