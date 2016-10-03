//
//  CasinoTableViewController.swift
//  ProjectTwoYelpApp
//
//  Created by Daniel Kim on 9/20/16.
//  Copyright © 2016 Daniel Kim. All rights reserved.
//

import Foundation
import UIKit


class CasinoTableViewController: UITableViewController {
    
    var selectedIndex = 0


    let main = OperationQueue.main
    
    
    private func loadNewImages() -> [UIImage] {
        return []
    }
    
    
    private var businessInfo: [Business] = []
    
    @IBOutlet var myTableView: UITableView!
    
    
    func authYelp() {
        
        let emptyString = "https://api.yelp.com/v3/businesses/search?term=poker&latitude=37.786882&longitude=-122.399972&radius=20000"
        
        let url = URL(string: emptyString)!
        
        var request = URLRequest.init(url: url)
        
        request.setValue("Bearer tQLn_PQZr48v97Zj5By-nxRZKFhhK_fdogV7VRe19XtiIOHNTQq4MdbFu856T9x8xhQ3ghTfjSO2gSuJ5UKhZtKR1Zu9YUD9j2I0o5rq-YF4qeHMNRViJKXGNiXgV3Yx", forHTTPHeaderField: "Authorization")
        
        let task = URLSession.shared
        
        let dataTask = task.dataTask(with: request) { (data,response,error) -> Void in
            
            guard let moreData = data else {return}
            
            guard let object = try? JSONSerialization.jsonObject(with: moreData, options: []) as! NSDictionary else {return}
            
            guard let array = object["businesses"] as? NSArray else {return}
            
            
            for i in array {
                
                guard let myDic = i as? NSDictionary else {return}
                
                guard let yelpObject = Business.fromJson(dictionary: myDic) else {return}
                
                self.businessInfo.append(yelpObject)
                
            }
        
            
            self.main.addOperation {
                
                
                self.myTableView.reloadData()
            }
            
        }
        
        dataTask.resume()
    }
    
    
    private let async: OperationQueue = {
        
        let operationQueue = OperationQueue()
        
        operationQueue.maxConcurrentOperationCount = 8
        return operationQueue
    } ()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.delegate = self
        myTableView.dataSource = self
        
        authYelp()
    
    
    
            //Pull to Refresh Function
            self.refresh()
    
            refreshControl?.backgroundColor = UIColor.green
            refreshControl?.tintColor = UIColor.white
    
            refreshControl?.backgroundColor = UIColor.green
            refreshControl?.tintColor = UIColor.white
    
            refreshControl = UIRefreshControl()
            refreshControl?.attributedTitle = NSAttributedString(string: "")
            refreshControl?.addTarget(self, action: #selector(self.refresh), for: UIControlEvents.valueChanged)
            tableView.addSubview(refreshControl!) // not required when using UITableViewController
        }
    
        func refresh() {
    
            async.addOperation {
    
                let newImages = self.loadNewImages()
    
                self.main.addOperation {
                    self.tableView.reloadData()
                    self.refreshControl?.endRefreshing()
                }
            }
    
        }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return businessInfo.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell {
            
            let businessforRow = businessInfo[indexPath.row]
            
            guard let newData = try? Data (contentsOf: businessforRow.url) else {return UITableViewCell () }
            
            guard let imageObject = UIImage(data:newData) else {return UITableViewCell () }
            
            cell.businessImage.image = imageObject
            
            cell.myLabel.text = businessforRow.name
            
            return cell
            
            
//           cell.myCell.image = businessforRow.url
            
//           cell.myLabel.text = businessforRow.rating
        }
        
        return UITableViewCell()
    }
    
    ////Segue
//    
//    func segueToAdditionalInfo(_ selectedIndex: Int) {
//        
//        self.selectedIndex = selectedIndex
//        
//        self.performSegue(withIdentifier: "passAdditionalInfo", sender: selectedIndex)
//    }
//    
//    override func prepare(for segue:UIStoryboardSegue, sender:Any?){
//        
//        guard let infoController = segue.destination as? InformationViewController
//            else {return}
//        
//        infoController.casinoRatings = self.casinoRatings
//        
//        if let info = sender as? Business! {
//            
//            CasinoTableViewController.
//            
//            infoController.rating = info.rating
//        }
//        else if let selectedPath = ?.indexPathForSelectedRow {
//            let row = selectedIndex.row
//        }
//    }
}


