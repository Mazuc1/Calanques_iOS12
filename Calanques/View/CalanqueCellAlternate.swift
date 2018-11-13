//
//  CalanqueCellAlternate.swift
//  Calanques
//
//  Created by Loic Mazuc on 13/11/2018.
//  Copyright © 2018 Loic Mazuc. All rights reserved.
//

import UIKit

class CalanqueCellAlternate: UITableViewCell {

    @IBOutlet weak var calanqueImage: UIImageView!
    @IBOutlet weak var nomLabel: UILabel!
    
    
    var calanque: Calanque? {
        didSet {
            if calanque != nil {
                calanqueImage.image = calanque?.image
                nomLabel.text = calanque?.nom
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
