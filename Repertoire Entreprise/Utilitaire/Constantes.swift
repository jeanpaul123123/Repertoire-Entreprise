//
//  Constantes.swift
//  Repertoire Entreprise
//
//  Created by Jean-Paul Berthelot on 22/08/2019.
//  Copyright © 2019 Jean-Paul Berthelot. All rights reserved.
//

import UIKit

//Discussion
//
//Every app must have an app delegate object to respond to app-related messages. For example, the app notifies its delegate when the app finishes launching and when its foreground or background execution status changes. Similarly, app-related messages coming from the system are often routed to the app delegate for handling. Xcode provides an initial app delegate for every app and you should not need to change this delegate later.
//The delegate must adopt the UIApplicationDelegate formal protocol.

//#coredatapicker

// voir explication dans OneNote
let appDelegate = UIApplication.shared.delegate as! AppDelegate
let contexte = appDelegate.persistentContainer.viewContext


