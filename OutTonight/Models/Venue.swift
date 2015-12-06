//
//  Venue.swift
//  OutTonight
//
//  Created by James Campbell on 06/12/2015.
//  Copyright © 2015 JAH. All rights reserved.
//

import Foundation
import ObjectMapper

class Venue: Mappable
{
    var name: String?
    
    required init?(_ map: Map)
    {
        
    }
    
    func mapping(map: Map)
    {
        name <- map["name"]
    }
}