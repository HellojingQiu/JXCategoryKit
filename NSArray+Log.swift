//
//  NSArray+Log.swift
//  JXCategoryKit
//
//  Created by RavenY on 2018/12/12.
//

import UIKit

extension NSArray{
    func description(withLocale locale: Any?) -> String {
        
        var strM = "(\n"
        enumerateObjects({ obj, idx, stop in
//            if let anObj = obj {
//                strM += "\t\(anObj),\n"
//            }
                strM += "\t\(obj),\n"
        })
        strM += ")"
        return strM
    }
}

extension NSDictionary{
    func description(withLocale locale: Any?) -> String {
        
        var strM = "{\n"
        
        enumerateKeysAndObjects { (key, obj, stop) in
//            if let aKey = key, let anObj = obj{
//                strM += "\t\(aKey) = \(anObj);\n"
//            }
            strM += "\t\(key) = \(obj);\n"
        }
        strM += "}\n"
        return strM
    }

}
