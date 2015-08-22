//
//  ViewController.swift
//  MyFirstSwift
//
//  Created by abhayam rastogi on 4/9/15.
//  Copyright (c) 2015 Itelligrape. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var titleLabel : UILabel?
    @IBOutlet weak var tableView  : UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.titleLabel?.text = "prateek"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell : UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "TableCell")
        
        cell.textLabel?.text = "prateek"
        var c  = indexPath.row
        cell.contentView.backgroundColor = UIColor(red: 1, green: 121, blue: 1, alpha: 1)
        return cell;
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 60;
    }
}

