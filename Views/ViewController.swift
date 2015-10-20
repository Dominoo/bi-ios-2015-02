//
//  ViewController.swift
//  Views
//
//  Created by Dominik Vesely on 20/10/15.
//  Copyright © 2015 Ackee s.r.o. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var webView: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //hide the view
        webView.hidden = true
        
        let v = UIView(frame: CGRect(x: 10, y: 10, width: 100, height: 100))
        v.backgroundColor = UIColor.redColor()
        
        
        
        
    }
    
    override func viewDidAppear(animated: Bool) {
        
        let url = NSURL(string: "https://www.apple.com")
        webView.loadRequest(NSURLRequest(URL: url!))
        webView.delegate = self

    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        print(webView.bounds)
        print(webView.frame)

    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

