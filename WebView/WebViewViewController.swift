//
//  WebViewViewController.swift
//  WebView
//
//  Created by Chrishon Wyllie on 10/7/16.
//  Copyright © 2016 Chrishon Wyllie. All rights reserved.
//

import UIKit

class WebViewViewController: UIViewController {

    // This was connected from a UIWebView that was dragged into the storyboard for this viewController
    @IBOutlet var myWebView: UIWebView!
    
    
    // This is an IBoutlet button in the toolbar of this view controller. When pressed it acts as a back button for the webview, similar to one in a real browser like Google Chrome, Safari, etc.
    @IBAction func browserGoBackButton(_ sender: AnyObject) {
        
        myWebView.goBack()
        
    }
    
    // Acts as a refresh button
    @IBAction func browserRefreshButton(_ sender: AnyObject) {
        
        myWebView.reload()
        
    }
    
    // Acts as a forward button
    @IBAction func browserGoForwardButton(_ sender: AnyObject) {
        
        myWebView.goForward()
        
    }
    
    
    // IMPORTANT!
    // This is the web page that is loaded onto the webView when the viewController loads. This could be any valid website
    // However, it would likely be relevant to your app such as the link to a terms of service page, etc.
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // REMEMBER! This can the url to any web page.
        let myWebsiteURL = URL(string: "https://www.google.com/#safe=off&q=chrishon%20wyllie")
        let request = URLRequest(url: myWebsiteURL!)
        myWebView.loadRequest(request)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
