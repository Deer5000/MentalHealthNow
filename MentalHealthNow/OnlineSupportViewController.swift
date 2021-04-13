//
//  OnlineSupportViewController.swift
//  MentalHealthNow
//
//  Created by Khidr Brinkley on 4/3/21.
//

import UIKit

class OnlineSupportViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func psychTodayPressed(_ sender: Any) {
        print("Psychology Today Button Pressed")
        if let url1 = URL(string: "http://www.psychologytoday.com") {
            UIApplication.shared.openURL(url1)

            }
    }
    
    
    @IBAction func MHNationalPressed(_ sender: Any) {
        print(" MHNational Button Pressed!")
        if let url2 = URL(string: "http://www.mhanational.org") {
            UIApplication.shared.openURL(url2)

            }
    }
    
    
    
    @IBAction func betterhelpPressed(_ sender: Any) {
        print(" BetterHelp Button Pressed!")
        if let url3 = URL(string: "http://www.betterhelp.com") {
            UIApplication.shared.openURL(url3)

            }
    }
    
    @IBAction func supportGroupCentralPressed(_ sender: Any) {
        print(" Support Group Central Button Pressed!")
        if let url4 = URL(string: "http://www.supportgroupscentral.com") {
            UIApplication.shared.openURL(url4)

            }
    }
    
    
    @IBAction func zenCarePressed(_ sender: Any) {
        print(" ZenCare Button Pressed!")
        if let url5 = URL(string: "http://www.zencare.co") {
            UIApplication.shared.openURL(url5)

            }
    }
    
    
    
}
