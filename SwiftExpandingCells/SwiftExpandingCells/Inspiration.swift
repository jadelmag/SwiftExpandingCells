//
//  Inspiration.swift
//  SwiftExpandingCells
//
//  Created by Javier on 31/8/15.
//  Copyright (c) 2015 Javier. All rights reserved.
//

import UIKit

class Inspiration: Session {
    
    class func allInspirations() -> [Inspiration] {
        var inspirations = [Inspiration]()
        if let URL = NSBundle.mainBundle().URLForResource("Inspirations", withExtension: "plist") {
            if let tutorialsFromPlist = NSArray(contentsOfURL: URL) {
                for dictionary in tutorialsFromPlist {
                    let inspiration = Inspiration(dictionary: dictionary as! NSDictionary)
                    inspirations.append(inspiration)
                }
            }
        }
        return inspirations
    }
    
}
