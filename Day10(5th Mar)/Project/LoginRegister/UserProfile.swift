//
//  UserProfile.swift
//  LoginRegister
//
//  Created by MacStudent on 2018-02-27.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class UserProfile: UIViewController {

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtCarPlate: UITextField!
    @IBOutlet weak var txtContact: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        for customer in customers{
            if(customer.email == currentLoggedInCustomer){
                txtName.text = customer.name
                txtEmail.text = customer.email
                txtPassword.text = customer.password
                txtCarPlate.text = customer.plate
                txtContact.text = customer.contact
                break
            }
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func btnUpdateInformation(_ sender: UIButton) {
        
        var updateStatus = 0
    
        if(currentLoggedInCustomer != ""){
            
            for customer in customers{
                if(customer.email == currentLoggedInCustomer){
                    
                    currentLoggedInCustomer = txtEmail.text!  // Set current customer
                    
                    customer.name = txtName.text!
                    customer.email = txtEmail.text!
                    customer.password = txtPassword.text!
                    customer.plate = txtCarPlate.text!
                    customer.contact = txtContact.text!
                    
                    updateStatus = 1
                    break
                    
                }
            }
        }
        
        
        if(updateStatus == 0){
            
            let giveAlert = UIAlertController(title: "OOPS...", message: "Update data failed", preferredStyle: .alert)
            
            giveAlert.addAction( UIAlertAction(title: "OKAY", style: .default, handler: nil))
            
            self.present(giveAlert, animated: true, completion: nil)
        }else{
            
            let infoalert = UIAlertController(title: "SUCCESS", message: "Data updated!", preferredStyle: .alert)
            
            infoalert.addAction(UIAlertAction(title: "OKAY", style: .default, handler: {_ in self.displayWelcomeScreen()}))
            
            self.present(infoalert, animated: true , completion: nil)
        }
    }
    
    func displayWelcomeScreen(){
       
        let welcomeSB: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let welcomeVC = welcomeSB.instantiateViewController(withIdentifier: "WelcomeScreenTVC")
        
        navigationController?.pushViewController(welcomeVC, animated: true)
    }
   
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
