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

        if let venueList = VenueList.fetch(),
           let venues = venueList.venues
        {
            for (_, venue) in venues.enumerate()
            {
                print("\(venue.name)")
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

