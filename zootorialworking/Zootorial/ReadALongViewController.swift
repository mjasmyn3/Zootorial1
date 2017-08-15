//
//  ReadALongViewController.swift
//  Zootorial
//
//  Created by Kate Zemke on 7/31/17.
//  Copyright © 2017 J.A.K.E Corp. All rights reserved.
//

import UIKit
import AVFoundation

class ReadALongViewController: UIViewController {
    @IBOutlet weak var bookImage: UIImageView!
   
    @IBOutlet weak var line: UILabel!
    @IBOutlet weak var whoReads: UILabel!
    @IBAction func nextPage(_ sender: UIButton) {
        
        let length = read?.b.count
        index+=1
        if index < length!{
            line.text = read?.b[index]
            if index % 2 == 0 {
                whoReads.text = "Parent reads:"
            }
            else{
                whoReads.text = "I read:"
            }
        }
            
            
        else {
            line.text = "The End"
            whoReads.text = "Together Read:"
        }
        
        
    }
    
    var read : Story?
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let read = read {
            line.text = read.b[0]
            bookImage.image = read.bookImage
            
        }
        whoReads.text = "Parent reads:"
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
