//
//  ViewController.swift
//  Zootorial
//
//  Created by Jasmyn Medina on 7/24/17.
//  Copyright © 2017 J.A.K.E Corp. All rights reserved.
//

import UIKit
import AVFoundation

class BookViewController: UIViewController, UINavigationControllerDelegate {
    
//Mark: Properties
    @IBOutlet weak var bookPhoto: UIImageView!
    @IBOutlet weak var bookText: UILabel!
    @IBOutlet weak var BookDesText: UILabel!
     @IBOutlet weak var WriteText: UITextView!
   
   
    var read: Story?
   
    var synth = AVSpeechSynthesizer()
    var myUtterance = AVSpeechUtterance(string: "")
    var volume: Float!
    

    override func viewDidLoad() {
        super.viewDidLoad()
       
    // Set up views if editing an existing Story.
        if let read = read {
        navigationItem.title = read.name
        bookText.text   = read.name
        bookPhoto.image = read.photo
        BookDesText.text = read.description
        WriteText.text = read.fulltext
}
}
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
       synth.stopSpeaking(at: AVSpeechBoundary.immediate)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        synth = AVSpeechSynthesizer()
        myUtterance = AVSpeechUtterance(string: "")
        
    }
        override func didReceiveMemoryWarning() {
       super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
}
    @IBAction func textToSpeech(_ sender: UIButton) {
        if !synth.isSpeaking {
            myUtterance = AVSpeechUtterance(string: WriteText.text!)
            myUtterance.voice = AVSpeechSynthesisVoice(language: "en-US")
            myUtterance.rate = 0.5
            synth.speak(myUtterance)
            
            
            
        }
        else {
            synth.continueSpeaking()
        }
    
    }
    
    @IBAction func pauseSpeaking(_ sender: Any) {
        if !synth.isSpeaking {
        myUtterance = AVSpeechUtterance(string: WriteText.text!)
        myUtterance.rate = 1
        myUtterance.volume = 0.0
        synth.speak(myUtterance)
        }
    else {
    self.synth.pauseSpeaking(at: AVSpeechBoundary.word)
            }
    }
    
    
     

            // MARK: - Navigation
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "quizTime" {
                let dsCtl = segue.destination as! QuizViewController
                
                dsCtl.read = self.read
                }
                
                if segue.identifier == "readALong" {
                let dsCtl = segue.destination as! ReadALongViewController
                
                dsCtl.read = self.read
}

}
    
   

}
