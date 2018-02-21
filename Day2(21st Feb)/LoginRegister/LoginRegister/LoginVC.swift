//
//  ViewController.swift
//  LoginRegister
//
//  Created by MacStudent on 2018-02-21.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var txtEmail: UITextField!

    @IBOutlet weak var txtPassword: UITextField!
//
    
//    @IBAction func btnLoginAction(_ sender: UIButton) {
////
//        let Email = txtEmail.text
//        let Password = txtPassword.text
////
//        if (Email == "test"  && Password == "test"){
//
//            let infoalert = UIAlertController(title: "LoginSuccessful", message: "You are authenticated", preferredStyle: .alert)
//
//            infoalert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
//
//            self.present(infoalert, animated: true , completion: nil)
//        }else
//
//        {
//            let infoalert1 = UIAlertController(title: "Sorry", message: "You are not authenticated", preferredStyle: .alert)
//
//
//            infoalert1.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
//
//            self.present(infoalert1, animated: true , completion: nil)
//        }
//
//    }
    
    // ============= Login Button on Navigation bar =============
//    @IBAction func btnLoginAction(_ sender: UIBarButtonItem) {
//
//
//        let Email = txtEmail.text
//        let Password = txtPassword.text
//        //
//        if (Email == "test"  && Password == "test"){
//
//            let infoalert = UIAlertController(title: "LoginSuccessful", message: "You are authenticated", preferredStyle: .alert)
//
//            infoalert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
//
//            self.present(infoalert, animated: true , completion: nil)
//        }else
//
//        {
//            let infoalert1 = UIAlertController(title: "Sorry", message: "You are not authenticated", preferredStyle: .alert)
//
//
//            infoalert1.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
//
//            self.present(infoalert1, animated: true , completion: nil)
//        }
//    }

    //// ========== Login Button =========
    
    @IBAction func btnLoginAction1(_ sender: UIButton) {
        
        
        let Email = txtEmail.text
        let Password = txtPassword.text
        //
        if (Email == "test"  && Password == "test"){
            
            let infoalert = UIAlertController(title: "LoginSuccessful", message: "You are authenticated", preferredStyle: .alert)
            
            infoalert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
            
            self.present(infoalert, animated: true , completion: nil)
        }else
            
        {
            let infoalert1 = UIAlertController(title: "Sorry", message: "You are not authenticated", preferredStyle: .alert)
            
            
            infoalert1.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
            
            self.present(infoalert1, animated: true , completion: nil)
        }
        
    }
    
    
    // ====================== Register =========================
    
    
    @IBAction func btnRegisterAction1(_ sender: UIButton) {
        let registerSB: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let registerVC = registerSB.instantiateViewController(withIdentifier: "RegistrationScreen")
        
        navigationController?.pushViewController(registerVC, animated: true)
        
    }
    
//    @IBAction func btnRegisterAction(_ sender: UIButton) {
//        let registerSB: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
//
//        let registerVC = registerSB.instantiateViewController(withIdentifier: "RegistrationScreen")
//
//        navigationController?.pushViewController(registerVC, animated: true)
//
//
////        self.present(registerVC, animated: true, completion: nil)
//
//    }
    
    
    //  ============== Register Button On Bar ===============
//    @IBAction func btnRegisterAction(_ sender: UIBarButtonItem) {
//
//        let registerSB: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
//
//        let registerVC = registerSB.instantiateViewController(withIdentifier: "RegistrationScreen")
//
//        navigationController?.pushViewController(registerVC, animated: true)
//
//    }

    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

