//
//  ViewController.swift
//  LoginDemo
//
//  Created by M_AMBIN02633 on 03/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtUserName: UITextField!
    
    @IBOutlet weak var txtPassWord: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func LoginBtnClicked(_ sender: UIButton) {
        
        guard let txtUsername = txtUserName, let txtPassword = txtPassWord  else {
            return
        }
        
        if let username = txtUsername.text,let password = txtPassword.text{
            if !username.isEmpty && !password.isEmpty {
                
                
                self.performSegue(withIdentifier: "navigateToHome", sender: nil)
            }else{
                print("invalid username and password")
            }
        }
    }
    
    
}

