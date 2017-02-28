//
//  SecondViewController.swift
//  To Do List
//
//  Created by Nare Hovhannisyan on 2/24/17.
//  Copyright © 2017 Nare Hovhannisyan. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

   
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var yourbutton: UIButton!
    
    @IBAction func AddButton(_ sender: Any) {
        items.append(self.textField.text!)
        textField.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.AddButton(yourbutton)
        textField.resignFirstResponder()
        return true
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    }

