//
//  AGDataStructureTypesViewController.swift
//  DataStructure
//
//  Created by Aman Gupta on 11/04/18.
//  Copyright © 2018 DeveloperFly. All rights reserved.
//

import UIKit

class AGDataStructureTypesViewController: UIViewController {

    //MARK: - IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: - Variables
    var titleDict = Dictionary<String, Any>()
    
    //MARk: - View life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        if let dict = CommonClass.getDictionayFromPlist(with: "DataStructureType") {
            titleDict = dict
        }
        print(titleDict)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK: - Helper Function

}

//MARK: - Tableview DataSource
extension AGDataStructureTypesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let arrayData = titleDict["item\(section)"] as? [String]
        if let arr = arrayData {
            
        }
        return arrayData?.count > 0 ? (arrayData?.count)! : 0
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return titleDict.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AGDataStructureTypesTableViewCell", for: indexPath) as! AGDataStructureTypesTableViewCell
        return cell
    }
    
}


//MARK: - TbaleView Delegate
extension AGDataStructureTypesViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
}



