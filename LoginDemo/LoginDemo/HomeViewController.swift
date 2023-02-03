//
//  HomeViewController.swift
//  LoginDemo
//
//  Created by M_AMBIN02633 on 03/02/23.
//

import UIKit

class HomeViewController: UIViewController,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = self.items[indexPath.row]
        return cell!
    }
    

    @IBOutlet weak var tableView: UITableView!
    
    var items : [String] = ["sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    //self.tableView.dataSource = self
    
   

}
