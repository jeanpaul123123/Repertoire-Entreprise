//
//  AccueilController.swift
//  Repertoire Entreprise
//
//  Created by Jean-Paul Berthelot on 24/08/2019.
//  Copyright © 2019 Jean-Paul Berthelot. All rights reserved.
//

import UIKit
import CoreData

class AccueilController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    //#Affichage personnes

    var cellID = "PersonneCell"
    
    var entreprises = [Entreprise]()
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        fetchEntreprises()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    
    
    // chaque entreprise sera une section
    // grâce à cette entreprise et aux relations, on va récupérer les employés
    func numberOfSections(in tableView: UITableView) -> Int {
        return entreprises.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // on vérifie que c'est un tableau de personnes
        if let employes = entreprises[section].employes?.allObjects as? [Personne] {
            return employes.count
        }
        return 0
    }
    
    // il y a un cellForRowAt
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let employes = entreprises[indexPath.section].employes?.allObjects as? [Personne] {
            let employeDeLaCell = employes[indexPath.row]
            if let cell = tableView.dequeueReusableCell(withIdentifier: cellID) as? PersonneCell {
                cell.miseEnPlace(personne: employeDeLaCell)
                return cell
            }
        }
        return UITableViewCell()
    }
    
    func fetchEntreprises() {
        let requete: NSFetchRequest<Entreprise> = Entreprise.fetchRequest()
        let tri = NSSortDescriptor(key: "nom", ascending: true)
        requete.sortDescriptors = [tri]
        do {
            entreprises = try contexte.fetch(requete)
            tableView.reloadData()
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return entreprises[section].nom
        
    }


}
