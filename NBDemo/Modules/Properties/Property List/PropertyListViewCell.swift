//
//  PropertyListViewCell.swift
//  NBDemo
//
//  Created by Vishal Madheshia on 24/02/18.
//  Copyright © 2018 Vishal Madheshia. All rights reserved.
//

import UIKit
import SDWebImage

class PropertyListViewCell: UITableViewCell {

    @IBOutlet weak var propertyTitle: UILabel!
    @IBOutlet weak var propertySecondaryTitle: UILabel!
    
    @IBOutlet weak var propertyImageView: UIImageView!
    @IBOutlet weak var rentLabel: UILabel!
    @IBOutlet weak var informationLabel: UILabel!
    @IBOutlet weak var areaLabel: UILabel!
    
    var propertyModel: PropertyModel? {
        didSet {
            propertyTitle.text = propertyModel?.propertyTitle ?? ""
            propertySecondaryTitle.text = "at \(String(describing: propertyModel?.secondaryTitle ?? ""))"
            propertyImageView.sd_setImage(with: APIManager.getImageUrl(url: propertyModel?.photos?.first?.imagesMap?.original ?? ""), placeholderImage: UIImage(named: "defaultImage"), options: [], completed: nil)
            rentLabel.text = "₹ \(propertyModel?.rent ?? 0)"
            let furnishValue = Furnishing(rawValue: propertyModel?.furnishing ?? "")
            var info = furnishValue?.value ?? ""
            info.append("\n\(propertyModel?.leaseType?.capitalized ?? "")")
            informationLabel.text = info
            areaLabel.text = "\(propertyModel?.propertySize ?? 0) Sq. ft"
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
