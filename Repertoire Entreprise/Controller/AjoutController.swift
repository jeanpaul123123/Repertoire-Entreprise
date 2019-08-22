//
//  AjoutController.swift
//  Repertoire Entreprise
//
//  Created by Jean-Paul Berthelot on 21/08/2019.
//  Copyright © 2019 Jean-Paul Berthelot. All rights reserved.
//

import UIKit

class AjoutController: UIViewController {

    @IBOutlet weak var scroll: UIScrollView!
    
    
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var ajouterEntreprise: UIButton!
    
    @IBOutlet weak var ImageDeProfil: ImageArrondie!
    
    @IBOutlet weak var telTextField: UITextField!
    
    @IBOutlet weak var prenomTextField: UITextField!
    @IBOutlet weak var nomTextField: UITextField!
    @IBOutlet weak var mailTextField: UITextField!
    
    @IBOutlet weak var ajouterPersonneBouton: BoutonArrondie!
    
    var testPicker = ["Apple", "Alphabet","Big Blue","Microsoft","Facebook"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // pour voir quelque chose
        //view.backgroundColor = .lightGray
        largeurContrainte.constant = view.frame.width
        scroll.contentSize = CGSize(width: largeurContrainte.constant, height: scroll.frame.height)
        
        miseEnPlacePicker()

    }
    
    @IBAction func ajouterPersonneAction(_ sender: Any) {
    }
    
    @IBAction func ajouterEntrepriseAction(_ sender: Any) {
    }
    @IBOutlet weak var largeurContrainte: NSLayoutConstraint!
    
    @IBOutlet weak var contrainteDuBas: NSLayoutConstraint!
    

}
