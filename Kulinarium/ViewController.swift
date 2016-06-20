//
//  ViewController.swift
//  Kulinarium
//
//  Created by Piotr on 6/3/16.
//  Copyright © 2016 Piotr Klis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Menu"
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
       if (segue.identifier == "sniadanieSegue") {
            let svc = segue.destinationViewController as! SniadanieViewController
            
            svc.toPass = 1
        }
        else if (segue.identifier == "obiadSegue") {
            let svc = segue.destinationViewController as! SniadanieViewController
            
            svc.toPass = 2
        }
        else if (segue.identifier == "kolacjaSegue") {
            let svc = segue.destinationViewController as! SniadanieViewController
            
            svc.toPass = 3
        }
 
    }
    

}

