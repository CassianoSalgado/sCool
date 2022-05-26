//
//  ColaboradorTableViewCell.swift
//  sCool
//
//  Created by Cassiano Carradore Salgado on 28/04/22.
//

import UIKit

class ColaboradorTableViewCell: UITableViewCell {

    @IBOutlet weak var nome: UILabel!
    @IBOutlet weak var salário: UILabel!
    @IBOutlet weak var matrícula: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
