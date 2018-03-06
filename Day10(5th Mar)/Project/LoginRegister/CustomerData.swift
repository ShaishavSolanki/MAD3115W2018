//
//  CustomerData.swift
//  LoginRegister
//
//  Created by MacStudent on 2018-03-02.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class CustomerData{
    
    var name:String
    var email:String
    var password:String
    var plate:String
    var contact:String
    
    init(name:String, email:String, password:String, plate:String, contact:String) {
        self.name = name
        self.email = email
        self.password = password
        self.plate = plate
        self.contact = contact
    }
}


var customers = [CustomerData]()


var currentLoggedInCustomer = ""

