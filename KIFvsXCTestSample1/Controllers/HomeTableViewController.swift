//
//  HomeTableViewController.swift
//  KIFvsXCTestSample1
//
//  Created by Naraharisetty, Venkat on 12/27/18.
//  Copyright © 2018 Naraharisetty, Venkat. All rights reserved.
//

import UIKit

class HomeTableViewController: UITableViewController {

    let cellDataArray:[String] = ["View Controller","Table View Controller"," ScrollView","ImageView","Animation View"];
    override func viewDidLoad() {
        super.viewDidLoad()


    }

    // MARK: - Table view data source
/*
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        print("Count is n")
        //return cellDataArray.count
        return 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "homeCell", for: indexPath)
        //cell.textLabel?.text = cellDataArray[indexPath.row]
        return cell
    }
    
*/

}
