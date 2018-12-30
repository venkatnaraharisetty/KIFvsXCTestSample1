//
//  LoginViewController.swift
//  KIFvsXCTestSample1
//
//  Created by Naraharisetty, Venkat on 12/27/18.
//  Copyright © 2018 Naraharisetty, Venkat. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var UserNameField: UITextField!
    @IBOutlet weak var PasswordField: UITextField!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.accessibilityLabel = "HomeNavigationButton";

    }
    
    @IBAction func LoginButton(_ sender: Any) {
        if UserNameField.text == ""{
            let alert = UIAlertController(title: "Alert", message: "Please enter username", preferredStyle:.alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { _ in print("This is test")}))
            self.present(alert, animated: true, completion: nil)
        } else if PasswordField.text == "" {
            let alert = UIAlertController(title: "Alert", message: "Please enter password", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { _ in print("This is test")}))
            self.present(alert, animated: true, completion: nil)
        } else if (UserNameField.text == "bla" && PasswordField.text == "bla"){
            let alert = UIAlertController(title: "Alert", message: "Invalid credentials", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { _ in print("This is test")}))
            alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: { _ in print("This is test")}))
            self.present(alert, animated: true, completion: nil)
        } else {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let loggedInVC = storyboard.instantiateViewController(withIdentifier: "LoggedInViewController")  as! LoggedInViewController
            self.navigationController?.pushViewController(loggedInVC, animated: true)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
