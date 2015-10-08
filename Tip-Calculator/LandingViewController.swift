//
//  LandingViewController.swift
//  Tip-Calculator
//
//  Created by Bahador Kharzami - Vendor on 10/7/15.
//  Copyright © 2015 Bahador Kharzami - Vendor. All rights reserved.
//

import UIKit

class LandingViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let myTimer : NSTimer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("myPerformeCode:"), userInfo: nil, repeats: false)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func myPerformeCode(timer : NSTimer) {
        // here code to perform
        let navController = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("TipViewController") as! UIViewController
        self.presentViewController(navController, animated: true, completion: nil)
    }


}
