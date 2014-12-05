//
//  ViewController.swift
//  FunFacts
//
//  Created by Chi-Jou Yu on 12/4/14.
//  Copyright (c) 2014 keroyu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var funFactLabel: UILabel!
  
  let factBook = FactBook()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    funFactLabel.text = factBook.factsArray[0]
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  @IBAction func showFunFact() {
    funFactLabel.text = factBook.factsArray[1]
  }

}

