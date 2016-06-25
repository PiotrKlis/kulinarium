//
//  RecipeViewController.swift
//  Kulinarium
//
//  Created by Piotr on 6/17/16.
//  Copyright © 2016 Piotr Klis. All rights reserved.
//

import UIKit

class RecipeViewController: UIViewController {

    @IBOutlet weak var instrText: UITextView!
    @IBOutlet weak var ingrText: UITextView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var recipeImg: UIImageView!

    
    var recipeName: String!
    var imageName: String!
    var ingrName: String!
    var instrName: String!
    
    override func viewWillAppear(animated: Bool) {
        
        nameLabel.text = recipeName
        recipeImg.image = UIImage(named: imageName)
        ingrText.text = ingrName
        instrText.text = instrName
        
        
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
