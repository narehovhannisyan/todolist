//
//  FirstViewController.swift
//  To Do List
//
//  Created by Nare Hovhannisyan on 2/24/17.
//  Copyright © 2017 Nare Hovhannisyan. All rights reserved.
//

import UIKit
var items: [String] = ["IOS", "do lessons", "dinner", "call mom" ]



class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

     // var items: [String] = ["IOS", "do lessons", "dinner", "call mom" ]
    
    
    @IBOutlet weak var label: UILabel!
    
    
    @IBOutlet weak var table: UITableView!
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
        
    {

        return items.count
       

    }
    
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if ( editingStyle == UITableViewCellEditingStyle.delete) {
        items.remove(at: indexPath.row)
            
            table.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        table.reloadData()
    }
}

