//
//  ObiadViewController.swift
//  Kulinarium
//
//  Created by Piotr on 6/4/16.
//  Copyright © 2016 Piotr Klis. All rights reserved.
//

import UIKit

class ObiadViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    
    var tableData = ["Kanapeczka", "Jablko", "Jajecznica"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        self.title="Obiad"
        
        // Register custom cell
        let nib = UINib(nibName: "vwTblCell", bundle: nil)
        tableView.registerNib(nib, forCellReuseIdentifier: "cell")
        
        
        // Do any additional setup after loading the view.
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
    
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        print("Row \(indexPath.row) selected")
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
