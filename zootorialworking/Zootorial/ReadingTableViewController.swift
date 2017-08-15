//
//  ReadingTableViewController.swift
//  Zootorial
//
//  Created by Jasmyn Medina on 7/24/17.
//  Copyright © 2017 J.A.K.E Corp. All rights reserved.
//

import UIKit
import os.log


private let reuseIdentifier = "Cell"

class ReadingTableViewController: UITableViewController {
    
    //Mark: Properties
    
    var reading = [Story]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
    //load the sample data.
        loadSampleStories()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return reading.count
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Table view cells are reused and should be dequeued using a cell identifier.
        let cellIdentifier = "ReadingTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? ReadingTableViewCell  else {
            fatalError("The dequeued cell is not an instance of ReadingTableViewCell.")
        }
        // Fetches the appropriate meal for the data source layout.
        let Reading = reading[indexPath.row]
        
        cell.title.text = Reading.name
        cell.photoImageView.image = Reading.photo
        cell.desLabel.text = Reading.description
        return cell
        
        
    }
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
        
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    
    //Mark: Private Methods
    
    private func loadSampleStories(){
        
        
        
        let photo1 = UIImage(named: "Pump")
        let photo2 = UIImage(named: "Music")
        let photo3 = UIImage(named: "Panda")
        let photo4 = UIImage(named: "Plumber")
        let photo5 = UIImage(named: "Cater")
        let photo6 = UIImage(named: "Dog")
        let photo7 = UIImage(named: "Ghosts")
        let photo8 = UIImage(named: "Musics")
        let photo9 = UIImage(named: "Pandas")
        let photo10 = UIImage(named: "Gardens")
        let photo11 = UIImage(named: "Dogs")
        let photo12 = UIImage(named: "Plumb")
        
       
        
        
        guard let Pump = Story(name: "Patty's Favorite Holiday", photo: photo1, Des:"Patty tells us her favorite holiday.", a:["Patty's favorite holiday is Halloween." , "Patty's favorite holiday is Halloween." , "This year she wants to dress up as a butterfly.", "This year she wants to dress up as a butterfly." , "Her mom is surprising her with a butterfly costume." , "Her mom is surprising her with a butterfly costume." , "Patty is so happy. She can not wait until Halloween.", "Patty is so happy. She can not wait until Halloween."], qq1: "What is Patty's favorite holiday?", qq2: "What will Patty dress up as on Halloween?", qq3: "What emotion is she feeling?", qq4: "Who is the main character?", multa: "a. Halloween", multb: "b. Christmas", multa2: "a. Pan", multb2: "b. Patty", multa22: "a. Bee", multb22: "b. Butterfly", multa3: "a. Happy", multb3: "b. Sad", fulltext: "Patty's favorite holiday is Halloween. This year she wants to dress up as a butterfly. Her mom is surprising her with a butterfly costume. Patty is so happy. She can not wait until Halloween.", bookImage: photo7) else {
            fatalError("Unable to instantiate Pump")
        }
        
        guard let Music = Story(name: "My Musical Family", photo: photo2, Des: "A story about a musical family.", a:["My name is Kevin. My family is very talented.", "My name is Kevin. My family is very talented.", "We love music. My mom loves to play the piano.", "We love music. My mom loves to play the piano.", "My dad loves to play the guitar.", "My dad loves to play the guitar.", "My brother loves to play the drums.", "My brother loves to play the drums.", "I am still learning to play the piano.", "When my family is playing music I like to dance.", "I am still learning to play the piano.", "When my family is playing music I like to dance. "], qq1: "What is Kevin learning to play?", qq2: "What does Kevin's dad play?", qq3: "What makes the family talented?", qq4: "What does Kevin do when his family is playing?", multa: "a. Piano", multb: "b. Guitar", multa2: "a. Sings", multb2: "b. Dances", multa22: "a. the Tuba", multb22: "b. the Guitar ", multa3: "a. They play music.", multb3: "b. They can sing.", fulltext:"My name is Kevin. My family is very talented. They love music. My mom loves to play the piano. My dad loves to play the guitar. My brother loves to play the drums. I am still learning to play the piano. When my family is playing music I like to dance.", bookImage: photo8) else {
            fatalError("Unable to instantiate Music")
        }
        
        guard let Panda = Story(name: "The Three Jumping Pandas", photo: photo3, Des: "A story about three pandas who like jumping on the bed..", a: ["Ten pandas were jumping on the bed.","Ten pandas were jumping on the bed.", "One fell down!","One fell down!", "The other panda said, 'Did you hurt your leg?'","The other panda said, 'Did you hurt your leg?'", "'Should we call the vet?'","'Should we call the vet?'", "But the panda said, 'No the fun is not over yet!'","But the panda said, 'No the fun is not over yet!'"], qq1: "What were the pandas doing?", qq2: "What happened to the first panda?", qq3: "The panda said, 'No the fun is not over (a. yet, b.let)'.", qq4: "Did the panda call the vet.", multa: "a. Jumping", multb: "b. Dancing", multa2: "a. Yes", multb2: "b. No", multa22: "a. Hit his leg.", multb22: "b. Fell off the bed.", multa3: "a. Yet", multb3: "b. Let", fulltext: "Ten pandas were jumping on the bed. One fell down! The other panda said, 'Did you hurt your leg?', 'Should we call the vet?' But the panda said, 'No the fun is not over yet!'", bookImage: photo9) else {
            fatalError("Unable to instantiate Panda")
        }
        
        guard let Plumber = Story(name: "Worker Hat", photo: photo4, Des: "A story about a worker who loves his job.", a: ["It was Worker Day.","It was Worker Day.", "Jesse was ready for a Worker Adventure.", "Jesse was ready for a Worker Adventure.", "Jesse put on his Worker Hat.","Jesse put on his Worker Hat.", "Jesse was off on a Worker Adventure.","Jesse was off on a Worker Adventure.", "Soon Jesse was standing in front of a plumbing shop.","Soon Jesse was standing in front of a plumbing shop.", "'Come in, Jesse,' said a strong voice.","'Come in, Jesse,' said a strong voice.", "Jesse went in the plumbing shop. Jesse saw many pipes.","Jesse went in the plumbing shop. Jesse saw many pipes.", "Long pipes.","Long pipes.", "Short pipes.","Short pipes.", "Round pipes.","Round pipes.", "Jesse really likes Worker Day.","Jesse really likes Worker Day.", "Jesse for now says, 'Goodnight'.","Jesse for now says, 'Goodnight'."] ,qq1: "What day was it?", qq2: "Where did Jesse go?", qq3: "What did he find at the shop?", qq4: "What hat did Jesse put on?", multa: "a. Worker Day", multb: "b. Sleeping Day", multa2: "a. Party Hat", multb2: "b. Worker Hat", multa22: "a. Candy Shop", multb22: "b. Plumbing Shop", multa3: "a. Pipes", multb3: "b. Candy", fulltext: "It was Worker Day. Jesse was ready for a Worker Adventure. Jesse put on his Worker Hat. Jesse was off on a Worker Adventure. Soon Jesse was standing in front of a plumbing shop. 'Come in, Jesse,' said a strong voice. Jesse went in the plumbing shop. Jesse saw many pipes. Long pipes. Short pipes. Round pipes. Jesse really likes Worker Day. Jesse for now says, 'Goodnight'.", bookImage: photo12) else {
            fatalError("Unable to instantiate Plumber")
        }
        guard let Cater = Story(name: "The Friendly Caterpillars", photo: photo5, Des: "A story about three firendly caterpillars", a: ["Anne was a caterpillar.","Anne was a caterpillar.", "Anne likes to have fun.","Anne likes to have fun.", "Anne has two friends.","Anne has two friends.", "They are May and Ray.","They are May and Ray.", "Along come May and Ray, together they go play.","Along come May and Ray, together they go play.", "They see a pot next to a bush.","They see a pot next to a bush.", "They climb up and down the pot.","They climb up and down the pot.", "Anne, May, and Ray have so much fun together.","Anne, May, and Ray have so much fun together."], qq1: "Who is Anne?", qq2: "How many friends does Anne have?", qq3: "Where did they play?", qq4: "Anne, May, and Ray have so much (a. Luck, b. Fun).", multa: "a. a Caterpillar", multb: "b. a Rat", multa2: "a. Luck", multb2: "b. Fun", multa22: "a. Five", multb22: "b. Two", multa3: "a. a Pot", multb3: "b. a Garden", fulltext: "Anne was a caterpillar. Anne likes to have fun. Anne has two friends. They are May and Ray. Along come May and Ray, together they go play. They see a pot next to a bush. They climb up and down the pot. Anne, May, and Ray have so much fun together.", bookImage: photo10) else {
            fatalError("Unable to instantiate Cater")
        }
        guard let Dog = Story(name: "My Pet", photo: photo6, Des: "A story about a worker who loves his job.", a:["I love my pet. He is a dog.","I love my pet. He is a dog.", "He is a spaniel.","He is a spaniel.","His name is Spot.","His name is Spot.", "He plays with me. We play tag.","He plays with me. We play tag.", "We run and jump.","We run and jump.", "I tag Spot.","I tag Spot.", "He tags me.","He tags me.", "We have so much fun together.","We have so much fun together."], qq1: "What type of dog does he have?", qq2: "What do they play?", qq3: "What is the dog's name?", qq4: "I love my pet. He is a (a. cat, b. dog)", multa: "a. a Spaniel", multb: "b. a Poodle", multa2: "a. cat", multb2: "b. dog", multa22: "a. Hide and go Seek", multb22: "b. Tag", multa3: "a. Spot", multb3: "b. Luna", fulltext: "I love my pet. He is a dog. His name is Spot. He plays with me. We play tag. We run and jump. I tag Spot. He tags me. We have so much fun together.", bookImage: photo11) else {
            fatalError("Unable to instantiate Dog")
        }
        
      
        reading += [Pump, Music, Panda, Plumber, Cater, Dog]
        
    }
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowStory" {
            let dsCtl = segue.destination as! BookViewController
            
            let indexPath = tableView.indexPathForSelectedRow!
            dsCtl.read = reading[indexPath.row]
            
            
            }

        
    }
    
}




