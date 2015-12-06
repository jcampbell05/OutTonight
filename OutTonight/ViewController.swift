//
//  ViewController.swift
//  OutTonight
//
//  Created by James Campbell on 06/12/2015.
//  Copyright © 2015 JAH. All rights reserved.
//

import UIKit
import ObjectMapper
import YamlSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if let filePath = NSBundle.mainBundle().pathForResource("Venues", ofType: "yaml")
        {
            let fileContents = try! NSString(contentsOfFile: filePath, encoding: NSUTF8StringEncoding)
            let document = Yaml.load(fileContents as String)
            let value = document.value!
            
            let venueList = Mapper<VenueList>().map(value)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

