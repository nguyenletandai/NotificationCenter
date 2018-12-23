//
//  NhanViewController.swift
//  NotificationCenter
//
//  Created by daicudu on 11/28/18.
//  Copyright © 2018 daicudu. All rights reserved.
//

import UIKit

class NhanViewController: UIViewController {

    @IBOutlet weak var nhanTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func NhanButton(sender: UIButton) {
        NotificationCenter.default.post(name: .dataText, object: nhanTextField.text)
        navigationController?.popViewController(animated: true)
    }

}
