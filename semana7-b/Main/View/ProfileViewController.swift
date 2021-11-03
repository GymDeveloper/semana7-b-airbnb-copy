//
//  ProfileViewController.swift
//  semana7-b
//
//  Created by Linder Hassinger on 20/10/21.
//

import UIKit
import FirebaseAuth

class ProfileViewController: UIViewController {

    @IBOutlet weak var lblEmail: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }
    
//  vamos a recuperar al usuario de session y extraer sus datos
    func setUpView() {
        let user = Auth.auth().currentUser
        
        if let user = user {
            lblEmail.text = user.email
        }
    }
    
    @IBAction func onClickLogout(_ sender: Any) {
        // vamos a borrar la session del usuario actual
        let auth = Auth.auth()

        do {
            try auth.signOut()
            // dismmis para mandarlo a la vista inicial 
            dismiss(animated: true, completion: nil)
        } catch let error as NSError {
            print(error.localizedDescription)
        }
    }
    
}
