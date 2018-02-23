//
//  PropertyFilterViewController.swift
//  NBDemo
//
//  Created by Vishal Madheshia on 24/02/18.
//  Copyright © 2018 Vishal Madheshia. All rights reserved.
//

import UIKit

class PropertyFilterViewController: UIViewController {

    @IBOutlet weak var rk1Button: NBCustomButton!
    @IBOutlet weak var bhk1Button: NBCustomButton!
    @IBOutlet weak var bhk2Button: NBCustomButton!
    @IBOutlet weak var bhk3Button: NBCustomButton!
    @IBOutlet weak var bhk4Button: NBCustomButton!
    @IBOutlet weak var bhk4PlusButton: NBCustomButton!
    
    @IBOutlet weak var apartmentButton: NBCustomButton!
    @IBOutlet weak var independentHouseButton: NBCustomButton!
    @IBOutlet weak var independentFloorButton: NBCustomButton!
    
    @IBOutlet weak var fullFurnishedButton: NBCustomButton!
    @IBOutlet weak var semiFurnishedButton: NBCustomButton!
    
    var refreshDelegate: ListRefreshDelegate?
    
    var filterModel: FilterModel = FilterModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        filterUpdate()
    }

    func filterUpdate() {
        for apartmentType in filterModel.apartmentTypes {
            switch apartmentType {
            case .RK1:
                rk1Button.isSelected = true
            case .BHK1:
                bhk1Button.isSelected = true
            case .BHK2:
                bhk2Button.isSelected = true
            case .BHK3:
                bhk3Button.isSelected = true
            case .BHK4:
                bhk4Button.isSelected = true
            case .BHK4plus:
                return bhk4PlusButton.isSelected = true
            }
        }
        for propertyType in filterModel.propertyTypes {
            switch propertyType {
            case .AP:
                apartmentButton.isSelected = true
            case .IH:
                independentHouseButton.isSelected = true
            case .IF:
                independentFloorButton.isSelected = true
            }
        }
        for furnishType in filterModel.furnishedTypes {
            switch furnishType {
            case .FULLY_FURNISHED:
                fullFurnishedButton.isSelected = true
            case .SEMI_FURNISHED:
                semiFurnishedButton.isSelected = true
            }
        }
    }
    // MARK: - Actions
    
    @IBAction func rk1ButtonClicked(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        filterModel.checkApartmentType(.RK1)
    }
    
    @IBAction func bhk1ButtonClicked(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        filterModel.checkApartmentType(.BHK1)
    }
    
    @IBAction func bhk2ButtonClicked(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        filterModel.checkApartmentType(.BHK2)
    }
    
    @IBAction func bhk3ButtonClicked(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        filterModel.checkApartmentType(.BHK3)
    }
    
    @IBAction func bhk4ButtonClicked(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        filterModel.checkApartmentType(.BHK4)
    }
    
    @IBAction func bhk4PlusButtonClicked(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        filterModel.checkApartmentType(.BHK4plus)
    }
    
    @IBAction func apartmentButtonClicked(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        filterModel.checkPropertyType(.AP)
    }
    
    @IBAction func independentHouseButtonClicked(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        filterModel.checkPropertyType(.IH)
    }
    
    @IBAction func independentFloorButtonClicked(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        filterModel.checkPropertyType(.IF)
    }
    
    @IBAction func semiFurnishedButtonClicked(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        filterModel.checkFurnishedType(.SEMI_FURNISHED)
    }
    
    @IBAction func fullFurnishedButtonClicked(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        filterModel.checkFurnishedType(.FULLY_FURNISHED)
    }
    
    @IBAction func closeButtonClicked(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func applyButtonClicked(_ sender: Any) {
        refreshDelegate?.refreshData(filterModel: filterModel)
        self.dismiss(animated: true, completion: nil)
    }
}
