//
//  AjoutController.swift
//  Repertoire Entreprise
//
//  Created by Jean-Paul Berthelot on 21/08/2019.
//  Copyright © 2019 Jean-Paul Berthelot. All rights reserved.
//

import UIKit
import CoreData

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
    
    
    // servait avant la création d'entités
    //var testPicker = ["Apple", "Alphabet","Big Blue","Microsoft","Facebook"]
    
    //#coredatapicker
    var entreprises = [Entreprise]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // pour voir quelque chose
        //view.backgroundColor = .lightGray
        largeurContrainte.constant = view.frame.width
        scroll.contentSize = CGSize(width: largeurContrainte.constant, height: scroll.frame.height)
        
        miseEnPlacePicker()
        
        //#fetchrequete
        fetchEntreprises()

    }
    
    //#fetchrequete
    func fetchEntreprises() {
        let requete: NSFetchRequest<Entreprise> = Entreprise.fetchRequest()
        let tri = NSSortDescriptor(key: "nom", ascending: true)
        requete.sortDescriptors = [tri]
        do {
            entreprises = try contexte.fetch(requete)
            pickerView.reloadAllComponents()
        } catch {
            print(error.localizedDescription)
        }
    }
    
    @IBAction func ajouterPersonneAction(_ sender: Any) {
    }
    
    @IBAction func ajouterEntrepriseAction(_ sender: Any) {
    }
    @IBOutlet weak var largeurContrainte: NSLayoutConstraint!
    
    @IBOutlet weak var contrainteDuBas: NSLayoutConstraint!
    

}
