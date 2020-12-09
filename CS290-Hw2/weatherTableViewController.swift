//
//  weatherTableViewController.swift
//  CS290-Hw2
//
//  Created by codeplus on 2/9/20.
//  Copyright © 2020 CS290. All rights reserved.
//

import UIKit

class customTableViewCell: UITableViewCell {

    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var weatherLabel: UILabel!
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var weatherImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

class weatherTableViewController: UITableViewController {

    var locations = ["Durham", "Chapel Hill", "Carrboro", "Morrisville", "Raleigh", "Cary"]
    var weathers = ["Cloudy", "Sunny", "Sunny", "Cloudy", "Rain", "Rain"]
    var temps = [" 78˚", " 78˚", " 77˚", " 80˚", " 82˚", " 81˚"]
    var weatherImages = [UIImage(named:"Durham"), UIImage(named:"Chapel Hill"), UIImage(named:"Carrboro"), UIImage(named:"Morrisville"), UIImage(named:"Raleigh"), UIImage(named:"Cary")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return locations.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "weatherCell", for: indexPath) as! customTableViewCell

        // Configure the cell...
        cell.locationLabel.text = locations[indexPath.row]
        cell.weatherLabel.text = weathers[indexPath.row]
        cell.tempLabel.text = temps[indexPath.row]
        cell.weatherImage.image = weatherImages[indexPath.row]

        return cell
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before     navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let destVC = segue.destination as! focusViewController
        let myRow = tableView!.indexPathForSelectedRow
        let myCurrCell = tableView.cellForRow(at: myRow!) as! customTableViewCell
        
        destVC.locationText = (myCurrCell.locationLabel!.text)!
        destVC.weatherText = (myCurrCell.weatherLabel!.text)!
        destVC.tempText = (myCurrCell.tempLabel!.text)!
        destVC.weatherImage = (myCurrCell.weatherImage!.image)!
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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

    

}
