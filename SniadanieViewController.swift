//
//  SniadanieViewController.swift
//  Kulinarium
//
//  Created by Piotr on 6/4/16.
//  Copyright © 2016 Piotr Klis. All rights reserved.
//

import UIKit

 class SniadanieViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var toPass: Int!
    
    
    var tableData = []
    var tableDataS = ["Kanapeczka", "Jablko", "Jajecznica"]
    var tableDataO = ["Schaboszczak", "Pierozki", "Spaghetti"]
    var tableDataK = ["Pizza", "Parowka", "Glodowka"]
    
    // if z buttona sniadanie -> self.title = "Sniadanie", numberOfRows, cellForAtRowPath
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        self.title="Kategoria"
        
        // Register custom cell
        let nib = UINib(nibName: "vwTblCell", bundle: nil)
        tableView.registerNib(nib, forCellReuseIdentifier: "cell")
        
        switch toPass {
        case 1: tableData = tableDataS
        case 2: tableData = tableDataO
        case 3: tableData = tableDataK
        default: print("not working")
        
        }
        
    
        // Do any additional setup after loading the view.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tableData.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell: TblCell = self.tableView.dequeueReusableCellWithIdentifier("cell") as! TblCell
        cell.lblJedzName.text = tableData[indexPath.row] as? String
        cell.imgJedzName.image = UIImage(named: tableData[indexPath.row] as! String )
        return cell
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        self.performSegueWithIdentifier("recipeSegue", sender: self)
        let row = indexPath.row
        print(tableData[row])
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "recipeSegue",
            let destination = segue.destinationViewController as? RecipeViewController,
            let recipeIndex = tableView.indexPathForSelectedRow?.row {
            
            destination.recipeName = tableData[recipeIndex] as! String
        
        }
        
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