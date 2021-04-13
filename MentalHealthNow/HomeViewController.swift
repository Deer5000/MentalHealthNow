//
//  ViewController.swift
//  MentalHealthNow
//
//  Created by Khidr Brinkley on 4/3/21.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBAction func ResourcesNearMePressed(_ sender: Any) {
        print("Resources Near Me Button Pressed!")
        self.performSegue(withIdentifier: "resourcesNearMeSegue", sender: self)
    }
    
    @IBAction func PhoneServicesPressed(_ sender: Any) {
        print("Phone Services Button Pressed!")
        self.performSegue(withIdentifier: "phoneServicesSegue", sender: self)
    }
    
    @IBAction func OnlineResourcesPressed(_ sender: Any) {
        print("Online Resources Button Pressed!")
        self.performSegue(withIdentifier: "onlineResourcesSegue", sender: self)
    }
    
    
    @IBAction func EmergencyCallPressed(_ sender: Any) {
        print("Emergency Button Pressed!")
        guard let number = URL(string: "tel://" + "911") else { return }
        UIApplication.shared.open(number)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

