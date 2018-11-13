//
//  DetailController.swift
//  Calanques
//
//  Created by Loic Mazuc on 13/11/2018.
//  Copyright © 2018 Loic Mazuc. All rights reserved.
//

import UIKit

class DetailController: UIViewController {

    @IBOutlet weak var calanqueImage: UIImageView!
    @IBOutlet weak var textView: UITextView!
    
    var calanqueRecu: Calanque?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let calanque = calanqueRecu else { return }
        calanqueImage.image = calanque.image
        
        let mutable = NSMutableAttributedString(string: calanque.nom, attributes: [
            .foregroundColor: UIColor.red,
            .font: UIFont.boldSystemFont(ofSize: 20)])
        mutable.append(NSAttributedString(string: calanque.desc, attributes: [
            .font: UIFont.systemFont(ofSize: 17),
            .foregroundColor: UIColor.darkGray]))
        
        textView.attributedText = mutable
    }

}
