//
//  ViewController.swift
//  PList
//
//  Created by MacStudent on 2018-02-27.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtCarPlate: UITextField!
    @IBOutlet weak var txtCarColor: UITextField!
    
    @IBAction func btnActionAddNew(_ sender: UIButton) {
        self.writePropertyList()
        
    }
    
    @IBAction func btnActionListAll(_ sender: UIButton) {
        let listSb: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let viewVC = listSb.instantiateViewController(withIdentifier: "ListCars")
        
        self.present(viewVC, animated: true, completion: nil)
    }
    
    func writePropertyList(){
        
        //creating a dictionary
        
        let myCar = NSMutableDictionary()
        myCar["CarPlate"] = self.txtCarPlate.text
        myCar["CarColor"] = self.txtCarColor.text
        
        if let plistPath = Bundle.main.path(forResource: "Cars", ofType: "plist"){
            
            //creating an array of plist
            let carsplist = NSMutableArray(contentsOfFile: plistPath)
            
            //adding an element of dictionary in array
            carsplist?.add(myCar)
            
            if  (carsplist?.write(toFile: plistPath, atomically: true))! {
            print("carlist: \(String(describing: carsplist))")
               // print(plistPath)
            }
        }else {
            print("unable to locate plist file")
        }
        
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

