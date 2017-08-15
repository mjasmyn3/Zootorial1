//
//  DataTableViewController.swift
//  Zootorial
//
//  Created by Kate Zemke on 7/27/17.
//  Copyright © 2017 J.A.K.E Corp. All rights reserved.
//

import UIKit
import os.log

private let reuseIdentifier = "Cell"
class DataTableViewController: UITableViewController {
    
    
    //MARK: Properties
    var datas = [Answers]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
      
    
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let savedData = loadAnswers() {
            print(savedData.count)
            datas = savedData
        }
        else {
            // Load the sample data.
            loadSampleData()
        }

        tableView.reloadData()
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
        print("data count is ", datas.count)
    return datas.count
    }
    
    private func loadSampleData() {
    guard let data1 = Answers(bookName: "My Pet", numCorrect: "4", date: "07-21-17")
    else{fatalError("Could not make data1")}
    guard let data2 = Answers(bookName: "My Musical Family", numCorrect: "3", date: "07-22-17")
    else{fatalError("Could not make data2")}
    guard let data3 = Answers(bookName: "The Three Hungry Pandas", numCorrect: "4", date: "07-23-17")
    else{fatalError("Could not make data3")}
    datas += [data1, data2, data3]
    }
    
     
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cellIdentifier = "DataTableViewCell"
    guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? DataTableViewCell else {
    fatalError("The dequeued cell is not an instance of DataTableViewCell.")
    }
    let data = datas[indexPath.row]
    cell.bookName.text = data.bookName
    cell.numCorrect.text = data.numCorrect
    cell.date.text = data.date
        
    // Configure the cell...
        
    return cell
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

}



