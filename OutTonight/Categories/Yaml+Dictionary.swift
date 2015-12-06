//
//  YamlSwift+Dictionary.swift
//  OutTonight
//
//  Created by James Campbell on 06/12/2015.
//  Copyright © 2015 JAH. All rights reserved.
//

import Foundation
import YamlSwift

extension Yaml
{
    func dictionaryValue()->AnyObject?
    {
        switch self
        {
        case .Null:
                return NSNull()
            
        case .Bool(let bool):
            return bool
            
        case .Int(let int):
            return int
            
        case .Double(let double):
            return double
            
        case .String(let string):
            return string
            
        case .Array(let values):
            return values.map{$0.dictionaryValue()}

        case .Dictionary(let values):
            return values.map{$0.dictionaryValue()}
        }
    }
}