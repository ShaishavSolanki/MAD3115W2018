//
//  ParkingManualViewController.swift
//  LoginRegister
//
//  Created by MacStudent on 2018-02-27.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class ParkingManualViewController: UIViewController {

    @IBOutlet weak var myWebView: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadPage()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadPage(){
        
        let loadFilePath = Bundle.main.url(forResource: "ParkingManual", withExtension: "html")
        
        let myRequest = NSURLRequest(url: loadFilePath!)
        
        myWebView.loadRequest(myRequest as URLRequest)
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
