//
//  DolphinTableViewControllerSpecs.swift
//  DolphinTableViewControllerApp
//
//  Created by Sid Raval on 10/5/14.
//  Copyright (c) 2014 sidraval. All rights reserved.
//

import UIKit
import Quick
import Nimble

class DolphinTableViewControllerSpecs: QuickSpec {
    override func spec() {
        var viewController: DolphinTableViewController!
        
        beforeEach {
            viewController = DolphinTableViewController()
            viewController.viewDidLoad()
        }
        
        describe("viewDidLoad") {
            it("loads the table view with three types of dolphin") {
                let tableView = viewController.tableView
                
                var indexPath = NSIndexPath(forRow: 0, inSection: 0)
                var cell = viewController.tableView(tableView, cellForRowAtIndexPath: indexPath)
                
                expect(cell.textLabel?.text).to(equal("Bottlenose"))
            }
        }
        
        describe("didSelectRowAtIndexPath") {
            it("deletes the selected row and reloads the tableView's data") {
                let tableView = viewController.tableView
                let indexPath = NSIndexPath(forRow: 0, inSection: 0)
                
                viewController.tableView(tableView, didSelectRowAtIndexPath: indexPath)
                
                var cell = viewController.tableView(tableView, cellForRowAtIndexPath: indexPath)
                expect(cell.textLabel?.text).to(beNil())
            }
        }
    }
}
