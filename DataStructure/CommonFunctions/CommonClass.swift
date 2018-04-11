//
//  CommonClass.swift
//  DataStructure
//
//  Created by Aman Gupta on 11/04/18.
//  Copyright © 2018 DeveloperFly. All rights reserved.
//

import Foundation
import UIKit

class CommonClass: NSObject {
    
    static var sharedInstance = CommonClass()
    
    class func getDictionayFromPlist(with plistName: String) -> Dictionary<String, Any>? {
        var dict: Dictionary<String, Any>?
        if let path = Bundle.main.path(forResource: plistName, ofType: "plist") {
            dict = NSDictionary(contentsOfFile: path) as? Dictionary<String, Any>
        }
        return dict
    }
    
}
