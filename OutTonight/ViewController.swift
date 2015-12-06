//
//  ViewController.swift
//  OutTonight
//
//  Created by James Campbell on 06/12/2015.
//  Copyright © 2015 JAH. All rights reserved.
//

import UIKit
import ObjectMapper

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if let filePath = NSBundle.mainBundle().pathForResource("Venues", ofType: "yaml")
        {
            let fileContents = try! NSString(contentsOfFile: filePath, encoding: NSUTF8StringEncoding)
            let document = Yaml.load(fileContents as String)
            let value = document.value!
            
            if let map = value.rawDictionary(),
               let venueList = Mapper<VenueList>().map(map),
               let venues = venueList.venues
            {
                for (_, venue) in venues.enumerate()
                {
                    print("\(venue.name)")
                }
            }
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

