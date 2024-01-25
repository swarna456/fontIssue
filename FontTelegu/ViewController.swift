//
//  ViewController.swift
//  FontTelegu
//
//  Created by swarna.pandey on 23/01/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var textLabel: UILabel!
 
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        textLabel.text = "Language changed to \(UserDefaults.standard.string(forKey: "AppLanguage") ?? "en")"
        textLabel.font = UIFont(name: AppFont.bold.name, size: 20)
    }
 
    
    func configureTableViewCell() {
        self.tableView.register(TableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CellItem.displayCellItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        let item = CellItem.displayCellItems[indexPath.row].cellName
        cell.configure(title: item)
        return cell
    }
}
