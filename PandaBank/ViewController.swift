//
//  ViewController.swift
//  PandaBank
//
//  Created by rene on 07.11.2020.
//

import UIKit
import WebKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var webview: WKWebView!
    @IBOutlet weak var tableView: UITableView!
    
    let accounts = ["EE123456789123456", "EE6236763424324", "EE23435464552311", "EE7327498379487938"]
    
    let pandaHTMLContent = """
        <html>
            <body>
                <h1>Hello, I'm a Panda Webview!</h1>
            </body>
        </html>
    """
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.allowsSelection = false
        
        // Insert and load custom HTML snippets when needed
        // webview.loadHTMLString(pandaHTMLContent, baseURL: nil)
        
        // Draw panda teaser container borders when needed for debugging
        // webview.layer.borderWidth = 4
        // webview.layer.borderColor = UIColor.blue.cgColor
        
        
        if let url = URL(string: "https://i.pinimg.com/originals/e0/3d/5b/e03d5b812b2734826f76960eca5b5541.jpg") {
            let request = URLRequest(url: url)
            webview.load(request)
        }
    }
    
    // Tableview delegate methods for dummy accounts data
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return accounts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell")! as UITableViewCell
            cell.textLabel?.text = accounts[indexPath.row]

            return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection
                                section: Int) -> String? {
       return "Sinu kontod:"
    }

}

