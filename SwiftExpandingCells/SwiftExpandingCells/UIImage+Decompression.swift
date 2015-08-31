//
//  UIImage+Decompression.swift
//  SwiftExpandingCells
//
//  Created by Javier on 31/8/15.
//  Copyright (c) 2015 Javier. All rights reserved.
//

import UIKit

extension UIImage {
    
    var decompressedImage: UIImage {
        UIGraphicsBeginImageContextWithOptions(size, true, 0)
        drawAtPoint(CGPointZero)
        let decompressedImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return decompressedImage
    }
    
}
