//
//  RecipeViewController.swift
//  Kulinarium
//
//  Created by Piotr on 6/17/16.
//  Copyright © 2016 Piotr Klis. All rights reserved.
//

import UIKit

class RecipeViewController: UIViewController {

    @IBOutlet var RecipeNameLabel: UIView!
    @IBOutlet weak var recipeLabel: UILabel!
    
    var recipeName = String()
    
    override func viewWillAppear(animated: Bool) {
        recipeLabel.text = recipeName
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
