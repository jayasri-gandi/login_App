//
//  LoginVC.swift
//  loginApp
//
//  Created by Jayasri  on 01/09/22.
//

import UIKit
class loginVC: UIViewController {
    
    @IBOutlet weak var emailTxtFeild: UITextField!
    @IBOutlet weak var passwordTxtFeild: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = false
    }
    @IBAction func loginButton(_ sender: Any) {
        
        guard let strEmail = self.emailTxtFeild?.text, !(strEmail.isEmpty) else {
            showAlert(title: "Email Required", message: "Please enter email")
            return
        }
        guard (self.isValidEmail(testStr: strEmail)) else {
            showAlert(title: "Invalid Eamil", message: "please enter valid email")
            return
        }
        guard let strPassword = self.passwordTxtFeild?.text, !(strPassword.isEmpty) else {
            showAlert(title: "Password Required", message: "Please enter password")
            return
        }
        guard (self.isPasswordValid(passwordStr: strPassword)) else {
            showAlert(title: "Invalid Password", message: "Please enter valid password")
            return
        }
        didTapButton()
    }
    @IBAction func newUserTapped(_ sender:UIButton) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Signup") as! RegisterVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc func didTapButton() {
        let tabBarVC = UITabBarController()
        tabBarVC.tabBar.backgroundColor = .white
        let vc1 = UINavigationController(rootViewController:FirstHomeVC())
        let vc2 = UINavigationController(rootViewController:SecondHomeVC())
        let vc3 = UINavigationController(rootViewController:ThirdHomeVC())
        let vc4 = UINavigationController(rootViewController:FourthHomeVC())
        let vc5 = UINavigationController(rootViewController:FifthHomeVC())
        
        vc1.title = "Home"
        vc2.title = "Contact"
        vc3.title = "Help"
        vc4.title = "About"
        vc5.title =  "Settings"
        
        tabBarVC.setViewControllers([vc1, vc2, vc3, vc4, vc5], animated: false)
        guard let items = tabBarVC.tabBar.items else { return }
        let images = ["house", "bell", "person.circle", "star","gear"]
        
        for x in 0..<items.count {
            items[x].image = UIImage(systemName: images[x])
        }
        tabBarVC.modalPresentationStyle = .fullScreen
        present(tabBarVC, animated: true)
    }
}
class FirstHomeVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        title = "Home"
    }
}

class SecondHomeVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        title = "Contact"
    }
}

class ThirdHomeVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        title = "Help"
    }
}

class FourthHomeVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        title = "About"
    }
}

class FifthHomeVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        title = "Settings"
    }
}




