//
//  ViewController.swift
//  Design
//
//  Created by MacStudent on 2018-02-20.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
 
    @IBOutlet weak var lblEmail: UILabel!
    
    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var btnLogin: UIButton!
    
    
   @IBAction func btnLoginAction(_ sender: UIButton) {
//
//        let email = txtEmail.text!
//        lblEmail.text = email
//

    
    let infoalert = UIAlertController(title: "User Information", message:"Hello", preferredStyle: .actionSheet)
    
    infoalert.addAction(UIAlertAction(title: "Hello", style: .default , handler: nil))
    
    self.present(infoalert, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

