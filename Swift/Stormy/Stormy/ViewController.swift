//
//  ViewController.swift
//  Stormy
//
//  Created by Chi-Jou Yu on 12/18/14.
//  Copyright (c) 2014 keroyu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  private let apiKey = "be766197868b90ba6a615a0306415173"

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    let baseURL = NSURL(string: "https://api.forecast.io/forecast/\(apiKey)/" )
    let forecastURL = NSURL(string: "37.8267,-122.423", relativeToURL: baseURL)
    
    let sharedSession = NSURLSession.sharedSession()
    let downloadTask: NSURLSessionDownloadTask = sharedSession.downloadTaskWithURL(forecastURL!, completionHandler: { (locaition: NSURL!, response: NSURLResponse!, error:NSError!) -> Void in
        println(response)
    })
    downloadTask.resume()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

