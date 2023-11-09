//
//  TableViewCellTableViewCell.swift
//  EjemploTableView
//
//  Created by Alberto Cano Roca on 02/11/2023.
//

import UIKit

class TableViewCellTableViewCell: UITableViewCell {

    @IBOutlet weak var lblTitulo: UILabel!
    
    @IBOutlet weak var lbContenido: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
