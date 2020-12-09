//
//  focusViewController.swift
//  CS290-Hw2
//
//  Created by codeplus on 2/9/20.
//  Copyright © 2020 CS290. All rights reserved.
//

import UIKit

class focusViewController: UIViewController {

    var locationText: String = ""
    var weatherText: String = ""
    var tempText: String = ""
    var weatherImage:UIImage?
    
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var weatherLabel: UILabel!
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var weatherPicture: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        locationLabel.text = locationText
        weatherLabel.text = weatherText
        tempLabel.text = tempText
        weatherPicture.image = weatherImage
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
