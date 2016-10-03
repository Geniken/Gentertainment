//
//  ShareViewController.swift
//  ProjectTwoYelpApp
//
//  Created by Daniel Kim on 9/22/16.
//  Copyright © 2016 Daniel Kim. All rights reserved.
//

import UIKit

class ShareViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var facebookOutlet: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.facebookOutlet.loadRequest(NSURLRequest(url: NSURL(string: "https://www.facebook.com")! as URL) as URLRequest)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
