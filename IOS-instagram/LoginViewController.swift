//
//  LoginViewController.swift
//  IOS-instagram
//
//  Created by Mark Cube on 10/23/20.
//

import UIKit
import Parse

class LoginViewController: UIViewController {
    
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBAction func onSignIn(_ sender: Any) {
        
        let usernameText = username.text!
        let passwordText = password.text!
        
        PFUser.logInWithUsername(inBackground: usernameText, password: passwordText)
        {
            (user, error) in
            
            if user != nil {
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
            } else {
                print("Error: \(String(describing: error?.localizedDescription))")
            }
        }
        
    }
    
    
    @IBAction func onSignUp(_ sender: Any) {
        
        let user = PFUser()
        user.username = username.text
        user.password = password.text

        user.signUpInBackground {(success, error) in
            if success {
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
            } else {
                print("Error: \(String(describing: error?.localizedDescription))")
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
        
        view.addGestureRecognizer(tap)
    }
    
//    @objc func dismissKeyboard()
//    {
//        view.endEditing(true)
//    }
    
//    func dismissKey() {
//        let tap = UITapGestureRecognizer = UITapGestureRecognizer( target: self, action: #selector(UIViewController.dismissKeyboard))
//
//        tap.cancelsTouchesInView = false view.addGestureRecognizer(tap)
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
