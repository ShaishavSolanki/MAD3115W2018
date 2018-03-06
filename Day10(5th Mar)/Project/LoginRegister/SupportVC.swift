//
//  SupportVC.swift
//  LoginRegister
//
//  Created by MacStudent on 2018-03-05.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit
import CallKit

class SupportVC: UIViewController {


    
    @IBAction func callActionBtn(_ sender: UIButton) {
        print("calling....")
        
    
        let url = URL(string: "tel://+14576897898")
        
        if UIApplication.shared.canOpenURL(url!){
            if #available(iOS 10, *)
            {
            
                UIApplication.shared.canOpenURL(url!)
                
            }
            else{
                
                UIApplication.shared.canOpenURL(url!)
                
            }
        }
        
    }
    
    @IBAction func mailActionBtn(_ sender: UIButton) {
        
            
            print("sending Mail....")
            
            if MFMailComposeViewController.canSendMail(){
                
                let EmailPicker = MFMailComposeViewController()
                
                EmailPicker.mailComposeDelegate = self
                EmailPicker.setSubject("Test Mail")
                EmailPicker.setMessageBody("Hello", isHTML: true)
                self.present(EmailPicker, animated: true, completion: nil)
            }
            else{
                print("cant send mail")
            }
            
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

extension SupportVC: MFMailComposeViewControllerDelegate{
    
    func mailCompassController(controller: MFMailComposeViewController,didFinishWithResult:MFMailComposeViewController, error: NSError?){
        
        
        
        controller.dismiss(animated: true, completion: nil)
    }
}
