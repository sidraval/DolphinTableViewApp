//
//  ViewController.swift
//  DolphinTableViewControllerApp
//
//  Created by Sid Raval on 10/5/14.
//  Copyright (c) 2014 sidraval. All rights reserved.
//

import UIKit

class DolphinTableViewController: UITableViewController {
    var dolphins: [String] = ["Bottlenose"]
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dolphins.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var tableViewCell = UITableViewCell()
        
        if (dolphins.count > indexPath.row) {
            tableViewCell.textLabel?.text = dolphins[indexPath.row]
        }
        
        return tableViewCell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        dolphins.removeAtIndex(indexPath.row)
        self.tableView.reloadData()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

