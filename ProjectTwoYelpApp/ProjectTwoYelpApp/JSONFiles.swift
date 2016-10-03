////
////  JSONFiles.swift
////  ProjectTwoYelpApp
////
////  Created by Daniel Kim on 9/20/16.
////  Copyright © 2016 Daniel Kim. All rights reserved.
////
//
//
//
//import Foundation
//import UIKit
//
//struct YelpCasino {
//    
//    "businesses": [{
//    "rating": 3.5,
//    "coordinates": {
//    "latitude": 37.680679,
//    "longitude": -122.45263
//    },
//    "review_count": 482,
//    "name": "Lucky Chances Casino",
//    "image_url": "https://s3-media3.fl.yelpcdn.com/bphoto/Y1lRL4KvJexVNVWifhAJwA/o.jpg",
//    "location": {
//    "zip_code": "94014",
//    "state": "CA",
//    "city": "Colma",
//    "country": "US",
//    "address1": "1700 Hillside Blvd",
//    "address2": "",
//    "address3": ""
//    },
//    "phone": "+16507582237",
//    "categories": [{
//    "title": "Casinos",
//    "alias": "casinos"
//    }],
//    "id": "lucky-chances-casino-colma",
//    "url": "https://www.yelp.com/biz/lucky-chances-casino-colma?adjust_creative=C4j7tTWIruShZ9kfylIAkw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=C4j7tTWIruShZ9kfylIAkw"
//    }, {
//    "rating": 2.0,
//    "coordinates": {
//    "latitude": 37.9524722,
//    "longitude": -122.3344278
//    },
//    "review_count": 190,
//    "name": "San Pablo Lytton Casino",
//    "image_url": "https://s3-media1.fl.yelpcdn.com/bphoto/CjlncRyMe2sCwR6j400BVQ/o.jpg",
//    "price": "$$",
//    "phone": "+15102157888",
//    "categories": [{
//    "title": "Casinos",
//    "alias": "casinos"
//    }],
//    "id": "san-pablo-lytton-casino-san-pablo-3",
//    "url": "https://www.yelp.com/biz/san-pablo-lytton-casino-san-pablo-3?adjust_creative=C4j7tTWIruShZ9kfylIAkw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=C4j7tTWIruShZ9kfylIAkw",
//    "location": {
//    "zip_code": "94806",
//    "state": "CA",
//    "city": "San Pablo",
//    "country": "US",
//    "address1": "13255 San Pablo Ave",
//    "address2": "",
//    "address3": ""
//    }
//    }, {
//    "rating": 3.0,
//    "coordinates": {
//    "latitude": 37.6277847290039,
//    "longitude": -122.41081237793
//    },
//    "review_count": 78,
//    "name": "Artichoke Joe's Casino",
//    "image_url": "https://s3-media4.fl.yelpcdn.com/bphoto/qL2uOumx9UMU7IXm8ZY1uA/o.jpg",
//    "location": {
//    "zip_code": "94066",
//    "state": "CA",
//    "city": "San Bruno",
//    "country": "US",
//    "address1": "659 Huntington Ave",
//    "address2": "",
//    "address3": ""
//    },
//    "phone": "+16505898812",
//    "categories": [{
//    "title": "Casinos",
//    "alias": "casinos"
//    }],
//    "id": "artichoke-joes-casino-san-bruno",
//    "url": "https://www.yelp.com/biz/artichoke-joes-casino-san-bruno?adjust_creative=C4j7tTWIruShZ9kfylIAkw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=C4j7tTWIruShZ9kfylIAkw"
//    }, {
//    "rating": 3.0,
//    "coordinates": {
//    "latitude": 37.8320384770632,
//    "longitude": -122.280312404037
//    },
//    "review_count": 115,
//    "name": "Oaks Card Club",
//    "image_url": "https://s3-media3.fl.yelpcdn.com/bphoto/GIa9hJBkxbA3RR--MQKX4A/o.jpg",
//    "location": {
//    "zip_code": "94608",
//    "state": "CA",
//    "city": "Emeryville",
//    "country": "US",
//    "address1": "4097 San Pablo Ave",
//    "address2": "",
//    "address3": ""
//    },
//    "phone": "+15106534456",
//    "categories": [{
//    "title": "Casinos",
//    "alias": "casinos"
//    }],
//    "id": "oaks-card-club-emeryville-2",
//    "url": "https://www.yelp.com/biz/oaks-card-club-emeryville-2?adjust_creative=C4j7tTWIruShZ9kfylIAkw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=C4j7tTWIruShZ9kfylIAkw"
//    }, {
//    "rating": 3.0,
//    "coordinates": {
//    "latitude": 37.773683,
//    "longitude": -122.40862
//    },
//    "review_count": 24,
//    "name": "A Casino Event",
//    "image_url": "https://s3-media2.fl.yelpcdn.com/bphoto/B0F0yPadZ0EQwKTHHfx6_g/o.jpg",
//    "location": {
//    "zip_code": "94103",
//    "state": "CA",
//    "city": "San Francisco",
//    "country": "US",
//    "address1": "",
//    "address2": "",
//    "address3": ""
//    },
//    "phone": "+18664332521",
//    "categories": [{
//    "title": "Casinos",
//    "alias": "casinos"
//    }, {
//    "title": "Party & Event Planning",
//    "alias": "eventplanning"
//    }],
//    "id": "a-casino-event-san-francisco",
//    "url": "https://www.yelp.com/biz/a-casino-event-san-francisco?adjust_creative=C4j7tTWIruShZ9kfylIAkw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=C4j7tTWIruShZ9kfylIAkw"
//    }],
//    "total": 11803
//}
//
//
