//
//  ControllerAvecTableView.swift
//  Calanques
//
//  Created by Loic Mazuc on 13/11/2018.
//  Copyright © 2018 Loic Mazuc. All rights reserved.
//

import UIKit

class ControllerAvecTableView: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    var calanque: [Calanque] = []
    var cellID = "Alternative"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        calanque = CalanqueCollection().all()

    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return calanque.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let calanques = calanque[indexPath.row]
        if let cell = tableView.dequeueReusableCell(withIdentifier: cellID) as? CalanqueCellAlternate {
            cell.calanque = calanques
            return cell
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    

}
