//
//  ListItemViewController.swift
//  ZhouYi
//
//  Created by chksong on 16/3/8.
//  Copyright © 2016年 chksong company. All rights reserved.
//

import UIKit

class ListItemViewController: UIViewController, UITableViewDataSource , UITableViewDelegate{

    @IBOutlet weak var tableview: UITableView!
    
    var guaItems : [GuaItem]?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.guaItems = [GuaItem(id: 1, name: "乾"),GuaItem(id: 2, name: "坤")]

        tableview.dataSource = self
        tableview.delegate = self
        
     //    tableview.registerClass(ListItemTableViewCell.self, forCellReuseIdentifier: "Cell")
        tableview.tableFooterView = UIView()
        
    
        ////////////
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

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.guaItems!.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("GuaItemCell", forIndexPath: indexPath)  as! ListItemTableViewCell
        
       // cell.textLabel?.text = guaItems?[indexPath.row].GuaName
        
        return cell
    }
    
    
    func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        if cell.respondsToSelector("setSeparatorInset:") {
            cell.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        }
        
        if cell.respondsToSelector("setLayoutMargins:")  {
            cell.layoutMargins = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        }
    }
    
    
    override func viewDidLayoutSubviews() {
        if self.tableview.respondsToSelector("setSeparatorInset:") {
            self.tableview.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        }
        
        if self.tableview.respondsToSelector("setLayoutMargins:") {
            self.tableview.layoutMargins = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        }
    }
    
}
