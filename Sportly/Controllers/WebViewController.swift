//
//  WebViewController.swift
//  Sportly
//
//  Created by SOHA on 4/24/21.
//

import UIKit

class WebViewController: UIViewController {
    
    @IBOutlet weak var contactWebView: UIWebView!
    var webURL : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
         AppCommon.shared.showSportlyLoadingLogo(self)
         let url = URL(string: "https://\(webURL)")
         let request = URLRequest(url: url!)
         contactWebView.loadRequest(request)
        AppCommon.shared.hideSportlyLoadingLogo()
    }
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
