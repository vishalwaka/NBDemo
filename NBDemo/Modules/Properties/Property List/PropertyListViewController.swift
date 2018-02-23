//
//  PropertyListViewController.swift
//  NBDemo
//
//  Created by Vishal Madheshia on 24/02/18.
//  Copyright © 2018 Vishal Madheshia. All rights reserved.
//

import UIKit

protocol ListRefreshDelegate {
    func refreshData(filterModel: FilterModel)
}

class PropertyListViewController: UIViewController {

    var filterModel: FilterModel = FilterModel()
    var properties: [PropertyModel] = [] {
        didSet {
            DispatchQueue.main.async { [weak self] in
                guard let weakSelf = self else {
                    return
                }
                
                weakSelf.tableView.reloadData()
            }
        }
    }
    
    let cellIdentifier = "PropertyListViewCell"
    let apiDelegate = APIManager()
    
    var indicator = UIActivityIndicatorView()
    
    // a boolean to determine whether API has more results or not
    var canFetchMoreResults = true
    
    struct Constants {
        static let FetchThreshold = 5 // a constant to determine when to fetch the results; anytime   difference between current displayed cell and your total results fall below this number you want to fetch the results and reload the table
        static let FetchLimit = 21 // results to fetch in single call
    }
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var noRecordsFoundLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.estimatedRowHeight = 320.0
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.tableFooterView = UIView()
        addActivityIndicator()
        
        // Do any additional setup after loading the view.
        fetchDataForPage(page: 1)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == AppConstants.openFilterSegue {
            if let navVC = segue.destination as? UINavigationController, let filterVC = navVC.childViewControllers.first as? PropertyFilterViewController {
                filterVC.filterModel = filterModel
                filterVC.refreshDelegate = self
            }
        }
    }

    func addActivityIndicator() {
        indicator = UIActivityIndicatorView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        indicator.activityIndicatorViewStyle = .gray
        indicator.center = self.view.center
        self.view.addSubview(indicator)
    }
    
    // method to fetch more data in background thread (see Data.switch for more details)
    private func fetchDataForPage(page: Int) {
        if page == 1 {
            
            //Show activity loader
            indicator.startAnimating()
            DispatchQueue.main.async {
                self.noRecordsFoundLabel.isHidden = true
            }
        }
        apiDelegate.getProperties(forPage: page, filterModel: filterModel) { (success, properties) in
            
            guard success else {
                return
            }
            if page == 1 {
                self.properties = properties
            }
            else {
                self.properties.append(contentsOf: properties)
            }
            
            self.canFetchMoreResults = !(properties.count < Constants.FetchLimit)
            DispatchQueue.main.async {
                //Hide activity loader
                self.indicator.stopAnimating()
                self.indicator.hidesWhenStopped = true
                
                if self.properties.count == 0 {
                    self.noRecordsFoundLabel.isHidden = false
                }
                else {
                    self.noRecordsFoundLabel.isHidden = true
                }
            }
        }
    }
}

extension PropertyListViewController: UITableViewDataSource {
    //MARK: UITableViewDataSource
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.properties.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! PropertyListViewCell
        cell.propertyModel = self.properties[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if (properties.count - indexPath.row) == Constants.FetchThreshold && canFetchMoreResults {
            fetchDataForPage(page: Int(properties.count/Constants.FetchLimit) + 1)
        }
    }
    
}

extension PropertyListViewController: UITableViewDelegate {
    //MARK: UITableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
    }
}

extension PropertyListViewController: ListRefreshDelegate {
    func refreshData(filterModel: FilterModel) {
         self.filterModel = filterModel
        self.properties = []
        self.tableView.reloadData()
        self.fetchDataForPage(page: 1)
    }
}
