//
//  TextFieldExtension.swift
//  Repertoire Entreprise
//
//  Created by Jean-Paul Berthelot on 23/08/2019.
//  Copyright © 2019 Jean-Paul Berthelot. All rights reserved.
//

import UIKit

extension AjoutController: UITextFieldDelegate {
    
    func miseEnPlaceTextField() {
        //prenomTextField = self
        prenomTextField.delegate = self
        nomTextField.delegate = self
        telTextField.delegate = self
        mailTextField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // là on arrête d'éditer et on retourne true, sinon on reste avec le clavier ...
        view.endEditing(true)
        return true
    }
    
    
}

