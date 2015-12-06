//
//  VenueList.swift
//  OutTonight
//
//  Created by James Campbell on 06/12/2015.
//  Copyright © 2015 JAH. All rights reserved.
//

import Foundation

import ObjectMapper

class VenueList: Mappable
{
    var venues: [Venue]?
    
    required init?(_ map: Map)
    {
        
    }
    
    func mapping(map: Map)
    {
        
    }
}