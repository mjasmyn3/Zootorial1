//
//  ProfileViewController.swift
//  Zootorial
//
//  Created by Jasmyn Medina on 7/31/17.
//  Copyright © 2017 J.A.K.E Corp. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation

class ProfileViewController: UIViewController, AVSpeechSynthesizerDelegate {
    @IBOutlet weak var ProfImage: UIImageView!
    @IBOutlet weak var ProfImage2: UIImageView!
    @IBOutlet weak var ProfImage3: UIImageView!
    @IBOutlet weak var ProfImage4: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ProfImage.layer.borderWidth = 1
        ProfImage.layer.masksToBounds = false
        ProfImage.layer.cornerRadius = ProfImage.frame.height/2
        ProfImage.layer.borderColor = UIColor.brown.cgColor
        ProfImage.clipsToBounds = true
        
        ProfImage2.layer.borderWidth = 1
        ProfImage2.layer.masksToBounds = false
        ProfImage2.layer.cornerRadius = ProfImage2.frame.height/2
        ProfImage2.layer.borderColor = UIColor.brown.cgColor
        ProfImage2.clipsToBounds = true
        
        ProfImage3.layer.borderWidth = 1
        ProfImage3.layer.masksToBounds = false
        ProfImage3.layer.cornerRadius = ProfImage3.frame.height/2
        ProfImage3.layer.borderColor = UIColor.brown.cgColor
        ProfImage3.clipsToBounds = true
        
        ProfImage4.layer.borderWidth = 1
        ProfImage4.layer.masksToBounds = false
        ProfImage4.layer.cornerRadius = ProfImage4.frame.height/2
        ProfImage4.layer.borderColor = UIColor.brown.cgColor
        ProfImage4.clipsToBounds = true
}
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var Label: UILabel!
    func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, willSpeakRangeOfSpeechString characterRange: NSRange, utterance: AVSpeechUtterance) {
        let mutableAttributedString = NSMutableAttributedString(string: utterance.speechString)
        mutableAttributedString.addAttribute(NSForegroundColorAttributeName, value: UIColor.red, range: characterRange)
        Label.attributedText = mutableAttributedString
    }
    
    func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didFinish utterance: AVSpeechUtterance) {
        Label.attributedText = NSAttributedString(string: utterance.speechString)
    }
    @IBAction func speechButton(_ sender: UIButton) {
            let string = Label.text!
            let utterance = AVSpeechUtterance(string: string)
            utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
            
            let synthesizer = AVSpeechSynthesizer()
            synthesizer.delegate = self
            synthesizer.speak(utterance)
    }
    
}
