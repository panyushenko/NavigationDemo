//
//  SecondViewController.swift
//  NavigationDemo
//
//  Created by Panyushenko on 25.03.2018.
//  Copyright © 2018 Artyom Panyushenko. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var labelForText: UILabel!
    
    var textInLabel: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelForText.text = textInLabel ?? "Unknown"
        // Do any additional setup after loading the view.
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
