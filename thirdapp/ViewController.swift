//
//  ViewController.swift
//  thirdapp
//
//  Created by karimamaaoui on 2/28/24.
//  Copyright © 2024 karimamaaoui. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource , UITableViewDelegate{
   
    @IBOutlet weak var tableView: UITableView!
    
    struct data {
        let label : String;
        let immg : String;
    }
    let array : [data] = [data(label: "label 1", immg: "images"),
                          data(label: "label 2", immg: "images-2"),
                          data(label: "label 3", immg: "images-3"),
                          data(label: "label 4", immg: "images"),
                          data(label: "label 5", immg: "images-2"),
                          data(label: "label 6", immg: "images-3"),
    ];
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        array.count
    }
    
 /*   func tableView(_ tableView: UITableView, didSelectRowAt indexPath : IndexPath) {
        print("you select cell " ,array[indexPath.row])
       
        let vc = storyboard?.instantiateViewController(withIdentifier: "DetailsViewController") as? DetailsViewController
        vc?.labelDetails = array[indexPath.row]
        vc?.imageDetails.image = UIImage(named: array[indexPath.row])

        self.navigationController?.pushViewController(vc!, animated: true)
            
        
    }
*/
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedData = array[indexPath.row]
        print("you select cell ", selectedData)

        if let vc = self.storyboard?.instantiateViewController(withIdentifier: "DetailsViewController") as? DetailsViewController {
            vc.lab = selectedData.label
            vc.image = UIImage(named: selectedData.immg) ?? UIImage()

            self.navigationController?.pushViewController(vc, animated: true)
        } else {
            print("Failed to instantiate DetailsViewController from storyboard.")
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let val = array[indexPath.row]
        let cellule = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyClasse
        cellule.labelTableCell.text = val.label
        cellule.imgTableCell.image = UIImage(named: val.immg)
        return cellule
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }


}

