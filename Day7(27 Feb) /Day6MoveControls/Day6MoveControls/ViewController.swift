//
//  ViewController.swift
//  Day6MoveControls
//
//  Created by MacStudent on 2018-02-27.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var progressTimer = Timer()
    
    @IBOutlet weak var percent: UILabel!
    @IBOutlet weak var myProgressView: UIProgressView!
    @IBOutlet weak var lblStepperValue: UILabel!
    @IBOutlet weak var btnStartProgress: UIButton!
    
    @IBOutlet weak var lblProgressView: UILabel!
    @IBAction func btnActionStartProgress(_ sender: UIButton) {
        
        self.myProgressView.progress += 0.01
        self.percent.text = "\(Int(self.myProgressView.progress*100))%"
        if self.myProgressView.progress >= 1
        {
            self.progressTimer.invalidate()
        }
        
    }
    @IBOutlet weak var lblSlider: UILabel!
    
    @IBOutlet weak var segment: UISegmentedControl!
    @IBOutlet weak var stepper: UIStepper!
    
    @IBOutlet weak var stepperVlaue: UIStepper!
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBAction func btnStartAction(_ sender: UIButton) {
        activityIndicator.startAnimating()
    }
    
    @IBAction func btnStopAction(_ sender: UIButton) {
        activityIndicator.stopAnimating()
    }
    
    @IBAction func segmentChange(_ sender: UISegmentedControl) {
        print("selected : \(segment.selectedSegmentIndex)")
        image.image = moodImages[segment.selectedSegmentIndex]
    }
    
    @IBAction func myStepperAction(_ sender: UIStepper) {
        lblStepperValue.text = String(stepper.value)
    }
    var moodImages: [UIImage] = [UIImage(named: "1.jpg")!,UIImage(named: "2.jpg")!,UIImage(named: "3.jpeg")!]

    @IBAction func sliderAction(_ sender: UISlider) {
        lblSlider.text = String(slider.value)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myProgressView.progress = 0.0
        lblProgressView.text = "\(Int(myProgressView.progress*100))%"
        self.progressTimer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(self.btnActionStartProgress), userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

