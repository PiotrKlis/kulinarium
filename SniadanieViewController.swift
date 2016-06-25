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
    
    var tableData = ["Dupa"]
    var tableDataS = ["Kanapeczka", "Jablko", "Jajecznica"]
    var tableDataO = ["Schaboszczak", "Pierozki", "Spaghetti"]
    var tableDataK = ["Pizza", "Parowka", "Glodowka"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        self.title="Kategoria"
        
        // Register custom cell
        let nib = UINib(nibName: "vwTblCell", bundle: nil)
        tableView.registerNib(nib, forCellReuseIdentifier: "cell")
        
        switch toPass {
        case 0: tableData = tableDataS
        case 1: tableData = tableDataO
        case 2: tableData = tableDataK
        default: print("not working")
        
        }
        
    
        // Do any additional setup after loading the view.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tableData.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell: TblCell = self.tableView.dequeueReusableCellWithIdentifier("cell") as! TblCell
        cell.lblJedzName.text = tableData[indexPath.row]
        cell.imgJedzName.image = UIImage(named: tableData[indexPath.row])
        return cell
        
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "recipeSegue",
            let destination = segue.destinationViewController as? RecipeViewController,
            let recipeIndex = tableView.indexPathForSelectedRow?.row {
            
            
            
            if (toPass == 0) {
                switch recipeIndex {
                case 0:
                    destination.recipeName = tableData[recipeIndex]
                    destination.imageName = tableData[recipeIndex]
                    destination.ingrName = "Tekst skladnikow 0 dla sniadania"
                    destination.instrName = "Tekst instrukcji 0 dla sniadania"
                case 1:
                    destination.recipeName = tableData[recipeIndex]
                    destination.imageName = tableData[recipeIndex]
                    destination.ingrName = "Tekst skladnikow 1"
                    destination.instrName = "Tekst instrukcji 1"
                case 2:
                    destination.recipeName = tableData[recipeIndex]
                    destination.imageName = tableData[recipeIndex]
                    destination.ingrName = "Tekst skladnikow 2"
                    destination.instrName = "Tekst instrukcji 2"
                default: print("not working")
                }
            }
            
            if (toPass == 1) {
                switch recipeIndex {
                case 0:
                    destination.recipeName = tableData[recipeIndex]
                    destination.imageName = tableData[recipeIndex]
                    destination.ingrName = "Tekst skladnikow 0 dla obiad"
                    destination.instrName = "Tekst instrukcji 0 dla obiad"
                case 1:
                    destination.recipeName = tableData[recipeIndex]
                    destination.imageName = tableData[recipeIndex]
                    destination.ingrName = "Tekst skladnikow 1"
                    destination.instrName = "Tekst instrukcji 1"
                case 2:
                    destination.recipeName = tableData[recipeIndex]
                    destination.imageName = tableData[recipeIndex]
                    destination.ingrName = "Tekst skladnikow 2"
                    destination.instrName = "Tekst instrukcji 2"
                default: print("not working")
                }
            }
            
            if (toPass == 2) {
                switch recipeIndex {
                case 0:
                    destination.recipeName = tableData[recipeIndex]
                    destination.imageName = tableData[recipeIndex]
                    destination.ingrName = "Tekst skladnikow 0 dla kolacja"
                    destination.instrName = "Tekst instrukcji 0 dla kolacja"
                case 1:
                    destination.recipeName = tableData[recipeIndex]
                    destination.imageName = tableData[recipeIndex]
                    destination.ingrName = "Tekst skladnikow 1"
                    destination.instrName = "Tekst instrukcji 1"
                case 2:
                    destination.recipeName = tableData[recipeIndex]
                    destination.imageName = tableData[recipeIndex]
                    destination.ingrName = "Tekst skladnikow 2"
                    destination.instrName = "Tekst instrukcji 2"
                default: print("not working")
                }
            }
            
        }
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        //tableView.deselectRowAtIndexPath(indexPath, animated: true)
        self.performSegueWithIdentifier("recipeSegue", sender: self)
    }
    
}

