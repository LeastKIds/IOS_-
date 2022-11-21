//
//  UIImageExtensions.swift
//  0012_CameraApp
//
//  Created by 김진홍 on 2022/11/21.
//

import UIKit

extension UIImage {
    func redraw() -> UIImage {
        let format = UIGraphicsImageRendererFormat()
        format.scale = 1
        return UIGraphicsImageRenderer(size: size, format: format)
            .image {context in
                draw(in: CGRect(origin: .zero, size: size))
            }
    }
}
