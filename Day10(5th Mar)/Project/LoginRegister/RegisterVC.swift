//
//  RegisterVC.swift
//  LoginRegister
//
//  Created by MacStudent on 2018-02-21.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

//class RegisterVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
class RegisterVC: UIViewController{
    
    @IBOutlet weak var txtName: UITextField!
    
    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
 
    @IBOutlet weak var txtConfirmPassword: UITextField!
    
    @IBOutlet weak var txtContactNumber: UITextField!
    
    @IBOutlet weak var txtcarNumberPlate: UITextField!
    
   
    override func viewDidLoad(){
        super.viewDidLoad()
        txtName.leftViewMode = .always
        let  image  = UIImageView(image: UIImage(named: "avatar.png"))
        image.frame = CGRect(x: 0, y: 0, width: 25, height: 25)
        txtName.leftView = image
        
        txtPassword.leftViewMode = .always
        let  image1  = UIImageView(image: UIImage(named: "padlock.png"))
        image1.frame = CGRect(x: 0, y: 0, width: 25, height: 25)
        txtPassword.leftView = image1
        
       
        txtEmail.leftViewMode = .always
        let  image2  = UIImageView(image: UIImage(named: "mail.png"))
        image2.frame = CGRect(x: 0, y: 0, width: 25, height: 25)
        txtEmail.leftView = image2
        
        
        txtContactNumber.leftViewMode = .always
        let  image3  = UIImageView(image: UIImage(named: "phone-call.png"))
        image3.frame = CGRect(x: 0, y: 0, width: 25, height: 25)
        txtContactNumber.leftView = image3
        
        
        txtcarNumberPlate.leftViewMode = .always
        let  image4  = UIImageView(image: UIImage(named: "license-plate.png"))
        image4.frame = CGRect(x: 0, y: 0, width: 25, height: 25)
        txtcarNumberPlate.leftView = image4
        
    
    }
    
    @objc private func displayValues(){
     
        let allData: String = "\(self.txtName.text!) \n  \n \(self.txtEmail.text!) \n \(self.txtPassword.text!) \n \(self.txtContactNumber.text!) \n \(self.txtcarNumberPlate.text!)"
        
        let infoAlert = UIAlertController(title: "Verify", message: allData, preferredStyle: .actionSheet)
        
        infoAlert.addAction(UIAlertAction(title: "Confirm", style: .default , handler: {_ in self.addCustomer()}))
         self.present(infoAlert, animated: true)
        
        infoAlert.addAction(UIAlertAction(title: "Cancel", style: .default , handler: nil))
       
        
        
    }
    
   
    
    
    // ========== Adding Title To Register Page============
    override func viewWillAppear(_ animated: Bool) {
        self.navigationItem.title = "Register"
        
        let btnSubmit = UIBarButtonItem(title: "Submit", style: .plain, target: self, action: #selector(displayValues))
        
        self.navigationItem.rightBarButtonItem = btnSubmit
    }
    
    
    // Adding Screen to customer
    func addCustomer(){
        let name = txtName.text!
        let email = txtEmail.text!
        let password = txtPassword.text!
        let plate = txtcarNumberPlate.text!
        let contact = txtContactNumber.text!
        
        let temp = CustomerData(name: name, email: email, password: password, plate: plate, contact: contact)
        
        customers.append(temp)
        
        displayLoginScreen()
    }
    
    
    
    // Welcome user screen
    func displayLoginScreen(){
        
        let loginSB: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let loginVC = loginSB.instantiateViewController(withIdentifier: "IndexStoryID")
       
        self.present(loginVC, animated: true, completion: nil)
        
       // navigationController?.pushViewController(welcomeVC, animated: true)
    }
    
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

  
}
