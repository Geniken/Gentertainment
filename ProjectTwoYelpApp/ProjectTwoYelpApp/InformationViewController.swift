//
//  InformationViewController.swift
//  ProjectTwoYelpApp
//
//  Created by Daniel Kim on 9/22/16.
//  Copyright © 2016 Daniel Kim. All rights reserved.
//

import Foundation

import UIKit

class InformationViewController: UIViewController {
    
//    private var information: [Business] = Business.information
    
    var selectedIndex = 0
    
    let main = OperationQueue.main
    
    private func loadAdditionalInfo() -> [String] {
        return []
    }
    
    @IBOutlet weak var extraImage: UIImageView!
    
    
    @IBOutlet weak var casinoRatings: UILabel!
    
    //Share to Facebook
    
    @IBAction func clickedShare(_ sender: AnyObject) {
        
        let textToShare = "Sharing is Caring"
        
        if let myWebsite = URL(string:"http://www.facebook.com/") {
            let objectsToShare = [textToShare, myWebsite] as [Any]
            
            let activityVC = UIActivityViewController(activityItems: objectsToShare, applicationActivities: nil)
            
            activityVC.popoverPresentationController?.sourceView = self.view
            self.present(activityVC, animated: true, completion: nil)
            
        }
    }
    
    
    //   private var rating:[Business] = []
    
    
    var arrayOfRatings:[String] = []
    
    var stringArray:String = ""
    
    func authYelp() {
        
        let emptyString = "https://api.yelp.com/v3/businesses/search?term=poker&latitude=37.786882&longitude=-122.399972&radius=20000"
        
        let url = URL(string:stringArray)!
        
        var request = URLRequest.init(url:url)
        
        request.setValue("Bearer tQLn_PQZr48v97Zj5By-nxRZKFhhK_fdogV7VRe19XtiIOHNTQq4MdbFu856T9x8xhQ3ghTfjSO2gSuJ5UKhZtKR1Zu9YUD9j2I0o5rq-YF4qeHMNRViJKXGNiXgV3Yx", forHTTPHeaderField: "Authorization")
        
        let task = URLSession.shared
        
        let dataTask = task.dataTask(with:request) {(data, response,error) -> Void in
            
            guard let additionalData = data else
            {return}
            
            guard let object = try? JSONSerialization.jsonObject(with: additionalData, options: []) as! NSDictionary else {return}
            
            guard let array = object["businesses"] as? NSArray else {return}
            
            for x in array {
                
                guard let myDic = x as? NSDictionary else {return}
                
                guard let yelpObject = Business.fromJson(dictionary: myDic) else {return}
                
                guard let newData = try? Data (contentsOf: yelpObject.url) else {return}
                
                // self.arrayOfRatings.append(additionalData)
                
                // self.stringArray.append(yelpObject.rating)
                
                
            }
    
        }
        
}
    
}
