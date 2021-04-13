//
//  PhoneServices.swift
//  MentalHealthNow
//
//  Created by Khidr Brinkley on 4/3/21.
//

import UIKit
import MessageUI

class PhoneServicesViewController: UIViewController, MFMessageComposeViewControllerDelegate {
    
    @IBAction func BackButton2Pressed(_ sender: Any) {
        print("Back Button 2 Pressed!")
        self.performSegue(withIdentifier: "backbutton2segue", sender: self)
    }
    
    
    @IBAction func SPButtonPressed(_ sender: Any) {
        print("Suicide Prevention Call Button Pressed")
        guard let number = URL(string: "tel://" + "1-800-273-8255") else { return }
        UIApplication.shared.open(number)
    }
    
    
    @IBAction func SAMHButtonPressed(_ sender: Any) {
        print("Substance Abuse and Mental Health Call Button Pressed")
        guard let number = URL(string: "tel://" + "1-800-662-4357") else { return }
        UIApplication.shared.open(number)
    }
    
    
    
    @IBAction func TeenHelplineButtonPressed(_ sender: Any) {
        print(" Teen Helpline Call Button Pressed")
        guard let number = URL(string: "tel://" + "1-800-422-4453") else { return }
        UIApplication.shared.open(number)
    }
    
    
    
    @IBAction func CrisisTextlineButtonPressed(_ sender: Any) {
        print(" Crisis Textline Button Pressed")
        if (MFMessageComposeViewController.canSendText()) {
            let controller = MFMessageComposeViewController()
            controller.body = ""
            controller.recipients = ["741741"]
            controller.messageComposeDelegate = self
            self.present(controller, animated: true, completion: nil)
        }
    }
    
    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func VetCrisisButtonPressed(_ sender: Any) {
        print(" Veteran Crisis Call Button Pressed")
        guard let number = URL(string: "tel://" + "844-693-5838") else { return }
        UIApplication.shared.open(number)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
