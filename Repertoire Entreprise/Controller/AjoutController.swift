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
    
    @IBOutlet weak var ImageDeProfil: UIImageView!
    
    @IBOutlet weak var telTextField: UITextField!
    
    @IBOutlet weak var prenomTextField: UITextField!
    @IBOutlet weak var nomTextField: UITextField!
    @IBOutlet weak var mailTextField: UITextField!
    
    @IBOutlet weak var ajouterPersonneBouton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func ajouterPersonneAction(_ sender: Any) {
    }
    
    @IBAction func ajouterEntrepriseAction(_ sender: Any) {
    }
    @IBOutlet weak var largeurContrainte: NSLayoutConstraint!
    
    @IBOutlet weak var contrainteDuBas: NSLayoutConstraint!
    

}
