//
//  ViewController.swift
//  testingSwift
//
//  Created by dev on 23/2/17.
//  Copyright (c) 2017 dev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lblText: UILabel!
    @IBOutlet var txtInput: UITextField!
    @IBOutlet var btnClick: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.endEditing(true)
        self.lblText.text = "something"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: NSSet, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func handleButtonClick( _ sender: AnyObject) {
        self.lblText.text = self.txtInput.text
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
