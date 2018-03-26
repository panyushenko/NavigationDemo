//
//  ThirdViewController.swift
//  NavigationDemo
//
//  Created by Panyushenko on 26.03.2018.
//  Copyright © 2018 Artyom Panyushenko. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    var textForFirstName: String?
    var textForSecondName: String?
    @IBOutlet weak var labelForFirthName: UILabel!
    @IBOutlet weak var labelForSecondName: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelForFirthName.text = textForFirstName ?? "Unknown"
        labelForSecondName.text = textForSecondName ?? "unknown"
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
