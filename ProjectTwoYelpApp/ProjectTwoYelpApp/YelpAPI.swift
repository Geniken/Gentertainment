//
//  YelpAPI.swift
//  ProjectTwoYelpApp
//
//  Created by Daniel Kim on 9/20/16.
//  Copyright © 2016 Daniel Kim. All rights reserved.
//

import UIKit

class YelpAPI{
    
    static var authToken:String?
    
    static let tokenURL:String = "htttps://api.yelp.com/oauth2/token"
    
    static let searchCasinoURL: String = "https://api.yelp.com/v3/businesses/search?term=poker&latitude&longitude="
}

func getCasinos () {
    
    let accessToken: String = "tQLn_PQZr48v97Zj5By-nxRZKFhhK_fdogV7VRe19XtiIOHNTQq4MdbFu856T9x8xhQ3ghTfjSO2gSuJ5UKhZtKR1Zu9YUD9j2I0o5rq-YF4qeHMNRViJKXGNiXgV3Yx"
    
    let searchCasinoURL: String = "https://api.yelp.com/v3/businesses/search?term=poker&latitude=37.786882&longitude=-122.399972"
    
    let headers = [ "Authorization" : "Bearer \(accessToken)"]
    
    guard let url = URL(string:searchCasinoURL) else { return }
    
    var request = URLRequest.init(url:url)
    
    request.setValue("Bearer tQLn_PQZr48v97Zj5By-nxRZKFhhK_fdogV7VRe19XtiIOHNTQq4MdbFu856T9x8xhQ3ghTfjSO2gSuJ5UKhZtKR1Zu9YUD9j2I0o5rq-YF4qeHMNRViJKXGNiXgV3Yx", forHTTPHeaderField: "Authorization")
    
    request.httpMethod = "GET"
    
    request.allHTTPHeaderFields = headers
    
    let sharedSession = URLSession.shared
    
    let completionHandler: (Data?, URLResponse?, Error?) -> Void = {data, response, error in
        
        guard let data = data, error == nil else {
            
            print ("error =\(error)")
            return
        }
        
        if let httpStatus = response as?
            HTTPURLResponse, httpStatus.statusCode != 200 {
            
            print ("statusCode should be 200, but is \(httpStatus.statusCode)")
            print ("response =\(response)")
            }
        
        let responseString = String(data:data, encoding: .utf8)
        print("responseString = \(responseString)")
    }
    
    let dataTask = sharedSession.dataTask (with:request, completionHandler:completionHandler)
    
    dataTask.resume()
    
}
