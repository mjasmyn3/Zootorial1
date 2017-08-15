//
//  QuizViewController.swift
//  Zootorial
//
//  Created by Jasmyn Medina on 7/26/17.
//  Copyright © 2017 J.A.K.E Corp. All rights reserved.
//

import UIKit
import os.log

class QuizViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var q1: UILabel!
    @IBOutlet weak var multA: UILabel!
    @IBOutlet weak var multB: UILabel!
    @IBOutlet weak var q1a: UITextField!
    @IBOutlet weak var q2: UILabel!
    @IBOutlet weak var q2a: UITextField!
    @IBOutlet weak var multA22: UILabel!
    @IBOutlet weak var multB22: UILabel!
    @IBOutlet weak var q3: UILabel!
    @IBOutlet weak var q3a: UITextField!
    @IBOutlet weak var multA3: UILabel!
    @IBOutlet weak var multB3: UILabel!
    @IBOutlet weak var q4: UILabel!
    @IBOutlet weak var multA2: UILabel!
    @IBOutlet weak var multB2: UILabel!
    @IBOutlet weak var q4a: UITextField!
    @IBOutlet weak var Q1Check: UIImageView!
    @IBOutlet weak var Q2Check: UIImageView!
    @IBOutlet weak var Q3Check: UIImageView!
    @IBOutlet weak var Q4Check: UIImageView!
    @IBOutlet weak var Label: UILabel!
    
    
    var read: Story?
    var datas = [Answers]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        q1a.delegate = self
        q2a.delegate = self
        q3a.delegate = self
        q4a.delegate = self
        
        if let savedData = loadAnswers() {
            print(savedData.count)
            datas += savedData
        }
        else {
            // Load the sample data.
            loadSampleData()
        }
        print("number of data points ", datas.count)

        
        
    if let read = read {
        q1.text = read.qq1
        q2.text = read.qq2
        q3.text = read.qq3
        q4.text = read.qq4
        
        multA.text = read.multA
        multB.text = read.multB
        multA2.text = read.multA2
        multB2.text = read.multB2
        multA22.text = read.multA22
        multB22.text = read.multB22
        multA3.text = read.multA3
        multB3.text = read.multB3
           
        }

        
// Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }
    
//Mark: Book Jan
    var dataForQ1 = ""
    var dataForQ2 = ""
    var dataForQ3 = ""
    var dataForQ4 = ""
    var numCorrect = 0
 


    

    
//MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField) {

//Mark: Book Jan 
    if(textField == q1a){
    dataForQ1 = textField.text!
        if dataForQ1.lowercased() == "a" {
        numCorrect+=1
        print(numCorrect)
    self.Q1Check.image = UIImage(named: "correct")
    }
    else {
    self.Q1Check.image = UIImage(named: "wrong")
    }
    }
    if(textField == q2a){
    dataForQ2 = textField.text!
    if dataForQ2.lowercased() == "b"{
        numCorrect+=1
        print(numCorrect)
    self.Q2Check.image = UIImage(named: "correct")
    }
    else{
    self.Q2Check.image = UIImage(named: "wrong")
    }
    }
    if(textField == q3a){
    dataForQ3 = textField.text!
    if dataForQ3.lowercased() == "a"{
        numCorrect+=1
        print(numCorrect)
    self.Q3Check.image = UIImage(named: "correct")
    }
    else{
    self.Q3Check.image = UIImage(named: "wrong")
    }
    }
    if(textField == q4a) {
    dataForQ4 = textField.text!
    if dataForQ4.lowercased() == "b"{
    numCorrect+=1
        print(numCorrect)
    self.Q4Check.image = UIImage(named: "correct")
    }
    else{
    self.Q4Check.image = UIImage(named: "wrong")
    }
    }
Label.text = String(numCorrect)
}
    private func loadSampleData() {
        guard let data1 = Answers(bookName: "Jan and Pam", numCorrect: "4", date: "07-21-17")
            else{fatalError("Could not make data1")}
        guard let data2 = Answers(bookName: "Jane got Sick", numCorrect: "3", date: "07-22-17")
            else{fatalError("Could not make data2")}
        guard let data3 = Answers(bookName: "The Three Hungry Pandas", numCorrect: "5", date: "07-23-17")
            else{fatalError("Could not make data3")}
        datas += [data1, data2, data3]
    }
    
    private func saveAnswers() {
        let isSuccessfulSave = NSKeyedArchiver.archiveRootObject(datas, toFile: Answers.ArchiveURL.path)
        if isSuccessfulSave {
            os_log("Stories successfully saved.", log: OSLog.default, type: .debug)
        } else {
            os_log("Failed to save stories...", log: OSLog.default, type: .error)
        }
    }
    
    private func loadAnswers() -> [Answers]?  {
        return NSKeyedUnarchiver.unarchiveObject(withFile: Answers.ArchiveURL.path) as? [Answers]
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "finishedQuiz" {
            
            
            var stringName = ""
            if let read = read {
                stringName = read.name
                
            }
            let stringNumCorrect = String(numCorrect)
            let newPoint = Answers(bookName: stringName, numCorrect: stringNumCorrect, date: "08-04-17")
            datas.append(newPoint!)
            print("data was made and saved")
           saveAnswers()
        }
        
        
    }

    
    }
