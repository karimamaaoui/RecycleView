//
//  DetailsViewController.swift
//  thirdapp
//
//  Created by karimamaaoui on 2/28/24.
//  Copyright © 2024 karimamaaoui. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var labelDetails: UILabel!
    @IBOutlet weak var imageDetails: UIImageView!
    
    var image = UIImage()
    var lab :String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelDetails.text = lab
        imageDetails.image = image
    }
    

}
