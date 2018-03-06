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
    
   
    
    
    //// ========== Login Button =========
    
    @IBAction func btnLoginAction1(_ sender: UIButton) {
        
        let Email = txtEmail.text
        let Password = txtPassword.text
        
        var loginFlag = 0
        
        for customer in customers{
            if(customer.email == Email && customer.password == Password){
                loginFlag = 1
                currentLoggedInCustomer = customer.email
                
                print(customer.email)
            }
        }
        
        
    
        
        
        //
        if (loginFlag == 1){
            
            let infoalert = UIAlertController(title: "LoginSuccessful", message: "You are authenticated", preferredStyle: .alert)
            
            infoalert.addAction(UIAlertAction(title: "Okay", style: .default, handler: {_ in self.displayWelcomeScreen()}))
            
            self.present(infoalert, animated: true , completion: nil)
        }else
            
        {
            let infoalert1 = UIAlertController(title: "Sorry", message: "You are not authenticated", preferredStyle: .alert)
            
            
            infoalert1.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
            
            self.present(infoalert1, animated: true , completion: nil)
        }
        
    }
    
    
    func displayWelcomeScreen(){
        
        
        let welcomeSB: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let welcomeVC = welcomeSB.instantiateViewController(withIdentifier: "WelcomeScreenTVC") as! WelcomeTableViewController
        
        navigationController?.pushViewController(welcomeVC, animated: true)

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
        
        txtEmail.leftViewMode = .always
        let  image  = UIImageView(image: UIImage(named: "mail.png"))
        image.frame = CGRect(x: 0, y: 0, width: 25, height: 25)
        txtEmail.leftView = image
        
        
        txtPassword.leftViewMode = .always
        let  image1  = UIImageView(image: UIImage(named: "padlock.png"))
        image1.frame = CGRect(x: 0, y: 0, width: 25, height: 25)
        txtPassword.leftView = image1
        
     
        let cust1 = CustomerData(name: "Akshar Patel", email: "akshar614@gmail.com", password: "ak", plate: "GJ23BG2449", contact: "8490908900")
        let cust2 = CustomerData(name: "Shaishav Solanki", email: "shaishavsolanki@gmail.com", password: "ss", plate: "BMWX 234", contact: "8765342312")
   
        customers.append(cust1)
        customers.append(cust2)
       
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

