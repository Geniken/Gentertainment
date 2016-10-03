//
//  BusinessClass.swift
//  ProjectTwoYelpApp
//
//  Created by Daniel Kim on 9/19/16.
//  Copyright © 2016 Daniel Kim. All rights reserved.
//

import Foundation


struct Business {
    
    let name:String
    let url:URL
//    let reviewCount: Int
//   let rating: Int
    
    
    static func fromJson(dictionary:NSDictionary) -> Business? {
        
        guard let thing = dictionary["image_url"] as? String,
            let name = dictionary["name"] as? String,
            let url = URL(string: thing)
//            let reviewCount = dictionary["review_count"] as? Int,
//            let rating = dictionary["rating"] as? Int
            
            else { return nil }
        
        return Business(name:name, url: url)
        
    }
    
}
