//
//  ViewController.swift
//  registarationApp
//
//  Created by MacStudent on 2018-11-13.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        btnRegister.isHidden = true
        btnModify.isHidden = true
        btnSave.isHidden = true
        btnLogin.isHidden = true
        lblEmail.isHidden = true
        txtEmail.isHidden = true
        lblEncryption.isHidden = true
        switchEnc.isHidden = true
        lblFirstname.isHidden = true
        txtFirstname.isHidden = true
        lblLastname.isHidden = true
        txtLastname.isHidden = true
        btnModify.isHidden = true
        btnSave.isHidden = true
        btnLogin.isHidden = true
        lblUsername.isHidden = true
        lblPassword.isHidden = true
        txtUsername.isHidden = true
        txtPassword.isHidden = true
        
        
    }

    @IBOutlet weak var switchEnc: UISwitch!
    @IBOutlet weak var lblEncryption: UILabel!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var lblEmail: UILabel!
    @IBOutlet weak var txtLastname: UITextField!
    @IBOutlet weak var lblLastname: UILabel!
    @IBOutlet weak var txtFirstname: UITextField!
    @IBOutlet weak var lblFirstname: UILabel!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var lblPassword: UILabel!
    @IBOutlet weak var lblUsername: UILabel!
    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var btnRegister: UIButton!
    
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var btnSave: UIButton!
    @IBOutlet weak var btnModify: UIButton!
    @IBOutlet weak var userState: UISegmentedControl!
    
   
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    
    @IBAction func userstate(_ sender: UISegmentedControl) {
        if( sender.selectedSegmentIndex == 0){
            btnModify.isHidden = true
            btnSave.isHidden = true
            btnLogin.isHidden = true
            btnRegister.isHidden = false
            lblEmail.isHidden = false
            txtEmail.isHidden = false
            lblEncryption.isHidden = false
            switchEnc.isHidden = false
            lblFirstname.isHidden = false
            txtFirstname.isHidden = false
            lblLastname.isHidden = false
            txtLastname.isHidden = false
            lblUsername.isHidden = false
            lblPassword.isHidden = false
            txtUsername.isHidden = false
            txtPassword.isHidden = false
            
        }else{
            lblUsername.isHidden = false
            lblPassword.isHidden = false
            txtUsername.isHidden = false
            txtPassword.isHidden = false
            btnRegister.isHidden = true
            lblEmail.isHidden = true
            txtEmail.isHidden = true
            lblEncryption.isHidden = true
            switchEnc.isHidden = true
            lblFirstname.isHidden = true
            txtFirstname.isHidden = true
            lblLastname.isHidden = true
            txtLastname.isHidden = true
            btnModify.isHidden = false
            btnSave.isHidden = false
            btnLogin.isHidden = false
            
        }
    }
    
    func errorMessage(message: String){
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: nil))
        self.present(alert, animated: true , completion: nil )
        
    }
    @IBAction func acRegister(_ sender: UIButton) {
        if(txtUsername.text?.isEmpty)!{
            errorMessage(message: "Please enter UserName")
        }else if(txtPassword.text?.isEmpty)!
        {
            errorMessage(message: "Please enter Password")
            
        }else if(txtFirstname.text?.isEmpty)!{
            errorMessage(message: "Please enter FirstName")
            
        }else if(txtLastname.text?.isEmpty)!{
            errorMessage(message: "Please enter LastName")
            
        }else if(txtEmail.text?.isEmpty)!{
            errorMessage(message: "Please enter Email")
        }else{
            let alert = UIAlertController(title: "Congrats", message: "You have been successfully registered", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: nil))
            self.present(alert, animated: true , completion: nil )
            txtUsername.text = ""
            txtPassword.text = ""
            txtFirstname.text = ""
            txtLastname.text = ""
            txtEmail.text = ""
            
        }
        
    }
}

