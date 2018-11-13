//
//  ImageRonds.swift
//  Calanques
//
//  Created by Loic Mazuc on 13/11/2018.
//  Copyright © 2018 Loic Mazuc. All rights reserved.
//

import UIKit

class ImageRonds: UIImageView {

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    func setup() {
        layer.cornerRadius = frame.height / 2
        layer.borderColor = UIColor.white.cgColor
        layer.borderWidth = 2
        clipsToBounds = true
        contentMode = .scaleAspectFill
    }
    

}
