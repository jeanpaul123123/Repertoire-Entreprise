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
        // tri des données
        let tri = NSSortDescriptor(key: "nom", ascending: true)
        requete.sortDescriptors = [tri]
        // fin tri
        do {
            // actualisation du tableau des entreprises qui alimente le pickerview (voir PickerViewExtension)
            entreprises = try contexte.fetch(requete)
            // rafraichissement du picker
            pickerView.reloadAllComponents()
        } catch {
            print(error.localizedDescription)
        }
    }
    
    
    @IBAction func ajouterEntrepriseAction(_ sender: Any) {
        // le UIAlertController est la popup
        let alerte = UIAlertController(title: "Votre entreprise n'est pas dans la liste?", message: "Ajouter", preferredStyle: .alert)
        // le UIAlertAction sont les boutons d'action
        let ajout = UIAlertAction(title: "OK", style: .default) { (action) in
            let textField = alerte.textFields![0] as UITextField
            if let texte = textField.text, texte != "" {
                // création d'une entreprise par le contexte ..
                let nouvelleEntreprise = Entreprise(context: contexte)
                nouvelleEntreprise.nom = texte
                // Enregistrement des objets
                appDelegate.saveContext()
                self.fetchEntreprises()
            }
            
        }
        // texte en filigrane dans le champs de saisie
        alerte.addTextField { (tf) in
            tf.placeholder = "nom de l'entreprise"
        }
        let annuler = UIAlertAction(title: "Annuler", style: .default, handler: nil)
        alerte.addAction(ajout)
        alerte.addAction(annuler)
        self.present(alerte, animated: true, completion: nil)
    }
    
    @IBAction func ajouterPersonneAction(_ sender: Any) {
    }
    

    @IBOutlet weak var largeurContrainte: NSLayoutConstraint!
    
    @IBOutlet weak var contrainteDuBas: NSLayoutConstraint!
    

}
