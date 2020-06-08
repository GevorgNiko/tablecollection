//
//  ViewController.swift
//  tablecollection
//
//  Created by Nikoghosyan Gevorg on 6/8/20.
//  Copyright © 2020 Nikoghosyan Gevorg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var models: [Model] = []
    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        self.tableview.rowHeight = 250;
        tableview.dataSource = self
        super.viewDidLoad()
        tableview.register(TableViewCell.nib(), forCellReuseIdentifier: TableViewCell.id)
        models.append(Model(image: "pic1"))
        models.append(Model(image: "pic2"))
        models.append(Model(image: "pic3"))


    }


}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableview.dequeueReusableCell(withIdentifier: TableViewCell.id) as? TableViewCell {
            cell.configure(with: models) 
            return cell
        }
        return UITableViewCell()
    }
    
   
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 250
    }

   
}
