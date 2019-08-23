//
//  NotificationCenterExtension.swift
//  Repertoire Entreprise
//
//  Created by Jean-Paul Berthelot on 23/08/2019.
//  Copyright © 2019 Jean-Paul Berthelot. All rights reserved.
//

import UIKit

//#notification
extension AjoutController {
    
    func miseEnPlaceNotification() {
        // ajout d'un observateur : self donc le Ajout controller : on veut que
        // Ajoutcontroller donc reçoive la notification clavier caché et clavier affiché
        // à chaque fois que le clavier est caché alors on fait l'action clavierRentre
        NotificationCenter.default.addObserver(self, selector: #selector(clavierRentre), name: UIResponder.keyboardWillHideNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(clavierSort), name: UIResponder.keyboardWillShowNotification, object: nil)
    }
    
    @objc func clavierRentre(notification: Notification) {
        UIView.animate(withDuration: 0.35) {
            self.contrainteDuBas.constant = 0
        }
    }
    
    @objc func clavierSort(notification: Notification) {
        // on récupère une notification qui va avoir des infos de l'utilisateur userInfo
        //
        if let hauteur = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as?
            // je récupère sa valeur et je ne veux que le cgrect
            NSValue)?.cgRectValue.height {
            UIView.animate(withDuration: 0.35, animations: {
                self.contrainteDuBas.constant = hauteur
            })
        }
    }
}
