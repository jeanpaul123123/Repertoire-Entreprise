//
//  PickerViewExtension.swift
//  Repertoire Entreprise
//
//  Created by Jean-Paul Berthelot on 22/08/2019.
//  Copyright © 2019 Jean-Paul Berthelot. All rights reserved.
//

import UIKit

extension AjoutController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func miseEnPlacePicker() {
        pickerView.delegate = self
        pickerView.dataSource = self
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        //return testPicker.count
        //#coredatapicker
        return entreprises.count
    }
    
    // une seule colonne par ligne
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // le forcomponent signifie que cela va boucler !!
    // chargement des entreprises dans le picker
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        //return testPicker[row]
        return entreprises[row].nom
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("Ligne choisie : " + entreprises[row].nom!)
    }
    

}
