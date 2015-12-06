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
    
    class func fetch() -> VenueList?
    {
        if let filePath = NSBundle.mainBundle().pathForResource("Venues", ofType: "json")
        {
            let data = NSData(contentsOfFile: filePath)
            let map = try! NSJSONSerialization.JSONObjectWithData(data!, options: .AllowFragments)
            
            return Mapper<VenueList>().map(map)
        }
        
        return nil
    }
    
    required init?(_ map: Map)
    {
        
    }
    
    func mapping(map: Map)
    {
       venues <- map["venues"]
    }
}