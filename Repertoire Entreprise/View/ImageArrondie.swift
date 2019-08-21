//
//  ImageArrondie.swift
//  Repertoire Entreprise
//
//  Created by Jean-Paul Berthelot on 21/08/2019.
//  Copyright © 2019 Jean-Paul Berthelot. All rights reserved.
//

import UIKit

class ImageArrondie: UIImageView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        miseEnPlace()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        miseEnPlace()
    }
    
    func miseEnPlace() {
        layer.cornerRadius = frame.width / 2
        layer.borderColor = UIColor.white.cgColor
        layer.borderWidth = 1
        image = UIImage(named: "vador")
        contentMode = .scaleAspectFill
        clipsToBounds = true
        
    }

}
