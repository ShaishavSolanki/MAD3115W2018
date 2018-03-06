//
//  WelcomeTableViewController.swift
//  LoginRegister
//
//  Created by MacStudent on 2018-02-27.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class WelcomeTableViewController: UITableViewController {

    @IBOutlet weak var selectionParkingLocation: UIView!
    @IBOutlet weak var selectionParkingReport: UITableViewCell!
    @IBOutlet weak var selectionUserProfile: UITableViewCell!
    @IBOutlet weak var selectionParkingManual: UITableViewCell!
    @IBOutlet weak var selectionCustomerSupport: UITableViewCell!
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        let rightButtonItem = UIBarButtonItem.init(
            title: "LOG OUT",
            style: .done,
            target: self,
            action: #selector(showAlert)
        )
        
        self.navigationItem.rightBarButtonItem = rightButtonItem
        
    }
    
    @objc func showAlert(){
        
        let confirmAlert = UIAlertController(title: "CONFIRM", message: "Log out?", preferredStyle: .alert)
        
        confirmAlert.addAction( UIAlertAction(title: "YES", style: .destructive, handler: {_ in self.logout()}))
        confirmAlert.addAction( UIAlertAction(title: "NO", style: .default, handler:nil))
        
        self.present(confirmAlert, animated: true, completion: nil)
        
    }
    
    @objc func logout(){
        
        let indexSB: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let indexVC = indexSB.instantiateViewController(withIdentifier: "IndexStoryID")
        
        self.present(indexVC, animated: true, completion: nil)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if(indexPath.row == 0){
            loadParkingLocation()
        }
        
        if(indexPath.row == 1){
            loadParkingReport()
        }
        
        if(indexPath.row == 2){
            loadUserProfile()
        }
        
        if(indexPath.row == 3){
            loadParkingManual()
        }
        
        if(indexPath.row == 4){
            loadCustomerSupport()
        }
    }

    
    
    // Parking Location Story
    func loadParkingLocation(){
        
        let parkingLocationSB: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let parkingLocationVC = parkingLocationSB.instantiateViewController(withIdentifier: "ParkingLocationStoryID")
        
        navigationController?.pushViewController(parkingLocationVC, animated: true)

    }
    
    
    // Parking Report Story
    func loadParkingReport(){
        
    }
    
    // User Profile Story
    func loadUserProfile(){
        
        let userSB: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let userVC = userSB.instantiateViewController(withIdentifier: "UserProfileStoryID")
        
        navigationController?.pushViewController(userVC, animated: true)
        
    }
    
    
    // Parking Manual Story
    func loadParkingManual(){
        
        let parkingManualSB: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let parkingManualVC = parkingManualSB.instantiateViewController(withIdentifier: "ParkingManualStoryID")
        
        navigationController?.pushViewController(parkingManualVC, animated: true)
        
        
    }
    
    // Customer Support Story
    func loadCustomerSupport(){
        
        
        let parkingManualSB: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let parkingManualVC = parkingManualSB.instantiateViewController(withIdentifier: "SupportScreenID")
        
        navigationController?.pushViewController(parkingManualVC, animated: true)
        
        
    }
    
    
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
