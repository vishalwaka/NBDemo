//
//  NBCustomButton.swift
//  NBDemo
//
//  Created by Vishal Madheshia on 24/02/18.
//  Copyright © 2018 Vishal Madheshia. All rights reserved.
//

import UIKit

class NBCustomButton: UIButton {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        layer.borderWidth = 1.0
        backgroundColor = UIColor.white
        setTitleColor(ColorConstants.themeColor, for: .selected)
        setTitleColor(ColorConstants.disabledButtonColor, for: .normal)
        layer.borderColor = ColorConstants.disabledButtonColor.cgColor
        tintColor = UIColor.white
        layer.cornerRadius = 3.0
        clipsToBounds = true
    }
    
    override open var isSelected: Bool {
        didSet {
            let customColor = isSelected ? ColorConstants.themeColor : ColorConstants.disabledButtonColor
            layer.borderColor = customColor.cgColor
        }
    }

}
