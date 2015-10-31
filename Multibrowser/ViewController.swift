//
//  ViewController.swift
//  Multibrowser
//
//  Created by Yohannes Wijaya on 10/31/15.
//  Copyright © 2015 Yohannes Wijaya. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate, UITextFieldDelegate, UIGestureRecognizerDelegate {

    // MARK: - IBOutlet Properties
    
    @IBOutlet weak var addressBar: UITextField!
    @IBOutlet weak var stackView: UIStackView!
    
    // MARK: - Methods Override
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setDefaultTitle()
        
        let addWebViewBarButtonItem = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: "addWebView")
        let deleteWebViewBarButtonItem = UIBarButtonItem(barButtonSystemItem: .Trash, target: self, action: "deleteWebView")
        self.navigationItem.rightBarButtonItems = [addWebViewBarButtonItem, deleteWebViewBarButtonItem]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Local Methods
    
    func addWebView() {
        let webView = UIWebView()
        webView.delegate = self
        
        self.stackView.addArrangedSubview(webView)
        
        let url = NSURL(string: "https://www.apple.com")!
        webView.loadRequest(NSURLRequest(URL: url))
    }
    
    func setDefaultTitle() {
        self.title = "Multibrowser"
    }
}

