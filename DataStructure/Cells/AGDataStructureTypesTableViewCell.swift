//
//  AGDataStructureTypesTableViewCell.swift
//  DataStructure
//
//  Created by Aman Gupta on 11/04/18.
//  Copyright © 2018 DeveloperFly. All rights reserved.
//

import UIKit

class AGDataStructureTypesTableViewCell: UITableViewCell {

    //MARK: - IBOutlets
    @IBOutlet weak var labeTitle: UILabel!
    
    //MARK: - Cell Life Cycle
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    //MARK: - Configure cell methods
    func configureCellData(title: String) {
        labeTitle.text = title
    }

}
