//
//  LoginViewController.swift
//  IOS-instagram
//
//  Created by Mark Cube on 10/23/20.
//

import UIKit
//import parse

class LoginViewController: UIViewController {

    
    
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBAction func onSignIn(_ sender: Any) {
        
//        var user = PFUser()
//        user.username = username.text
//        user.password = password.text
    }
    
    
    @IBAction func onSignUp(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
