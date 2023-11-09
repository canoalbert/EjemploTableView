//
//  ModificarTableViewController.swift
//  EjemploTableView
//
//  Created by Alberto Cano Roca on 09/11/2023.
//

import UIKit

class ModificarTableViewController: UITableViewController {

    @IBOutlet weak var txtContenido: UITextField!
    
    @IBOutlet weak var txtTitulo: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

}
