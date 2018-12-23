//
//  ViewController.swift
//  NotificationCenter
//
//  Created by daicudu on 11/28/18.
//  Copyright © 2018 daicudu. All rights reserved.
//

import UIKit
extension Notification.Name {
    static let dataText = Notification.Name("Key")
}
class ViewController: UIViewController {
    @IBOutlet weak var viewTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(dangKy(notification:)), name: .dataText, object: nil)
        // Do any additional setup after loading the view, typically from a nib.
    }
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    @objc func dangKy(notification: NSNotification) {
        viewTextField.text = notification.object as? String
    }


}

