//
//  PandaViewController.swift
//  Zootorial
//
//  Created by Jasmyn Medina on 8/2/17.
//  Copyright © 2017 J.A.K.E Corp. All rights reserved.
//

import UIKit

class PandaViewController: UIViewController {
    @IBAction func home(_ sender: UIBarButtonItem) {
        _ = navigationController?.popToRootViewController(animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

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
