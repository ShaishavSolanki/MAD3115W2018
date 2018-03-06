//
//  WelcomeVC.swift
//  LoginRegister
//
//  Created by MacStudent on 2018-02-21.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class WelcomeVC: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        self.navigationItem.title = "Welcome"
        
        let btnSubmit = UIBarButtonItem(title: "LogOut", style: .plain, target: self, action: nil)
        
        self.navigationItem.rightBarButtonItem = btnSubmit
    }
    
    func assignbackground(){
        let background = UIImage(named: "blurbackground.png")
        
        var imageView : UIImageView!
        imageView = UIImageView(frame: view.bounds)
        imageView.contentMode =  UIViewContentMode.center
        imageView.clipsToBounds = true
        imageView.image = background
        imageView.center = view.center
        view.addSubview(imageView)
        self.view.sendSubview(toBack: imageView)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        assignbackground()
        //self.view.backgroundColor = UIColor(patternImage: UIImage(named: "images.jpeg")!)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }


}
