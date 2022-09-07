//
//  ViewController.swift
//  loginApp
//
//  Created by Jayasri  on 01/09/22.
//

import UIKit
import GoogleSignIn
class MainVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func onTapfacebookBtn(_ sender: Any) {
        print("Facebook Taped")
    }
    @IBAction func onTapGoogleBtn(_ sender: Any) {
        let signInConfig = GIDConfiguration(clientID: "516444324421-fg7oa3eo7js343sohigrf6tstk4jk7dp.apps.googleusercontent.com")
        GIDSignIn.sharedInstance.signIn(with: signInConfig, presenting: self) { user, error in
            print("Google Taped")
        }
    }
    @IBAction func signUpBtn(_ sender: Any) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Signup") as! RegisterVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func loginBtn(_ sender: Any) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "loginVC") as! loginVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

