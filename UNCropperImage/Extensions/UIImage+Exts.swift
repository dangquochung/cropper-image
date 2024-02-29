//
//  UIImage+Helper.swift
//
//  Created by Manh Luong on 2023/02/08.
//

import UIKit

extension UIImage {

    // MARK: Custom UI

    convenience init(color: UIColor, size: CGSize) {
        UIGraphicsBeginImageContextWithOptions(size, false, UIScreen.main.scale)

        defer {
            UIGraphicsEndImageContext()
        }

        color.setFill()
        UIRectFill(CGRect(origin: .zero, size: size))

        guard let cgImage = UIGraphicsGetImageFromCurrentImageContext()?.cgImage else {
            self.init()
            return
        }

        self.init(cgImage: cgImage)
    }
}

extension UIImage {
    public func withOrientation(_ orientation: UIImage.Orientation) -> UIImage? {
        guard let cgImage = self.cgImage else {
            return nil
        }

        return UIImage(cgImage: cgImage, scale: scale, orientation: orientation)
    }
}


