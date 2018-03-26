//
//  ViewController.swift
//  NavigationDemo
//
//  Created by Panyushenko on 25.03.2018.
//  Copyright © 2018 Artyom Panyushenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier! {
        case "slider":
            guard let vc = segue.destination as? SecondViewController else {return}
            vc.textInLabel = "\(Int(slider.value * 100))"
            vc.navigationItem.title = segue.identifier
        case "textField":
            guard let vc = segue.destination as? SecondViewController else {return}
            vc.textInLabel = textField.text
            vc.navigationItem.title = segue.identifier
        default:
            break
        }
    }
    @IBAction func dismissAction(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
}

