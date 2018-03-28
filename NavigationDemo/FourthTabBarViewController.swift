//
//  FourthTabBarViewController.swift
//  NavigationDemo
//
//  Created by Panyushenko on 28.03.2018.
//  Copyright © 2018 Artyom Panyushenko. All rights reserved.
//

import UIKit

class FourthTabBarViewController: UIViewController {

    @IBOutlet weak var tabBarTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBarTextView.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier! == "textView"{
            guard let navigationController = segue.destination as? UINavigationController else {return}
            guard let vc = navigationController.topViewController as? ViewController else {return}
            vc.textTabBar = tabBarTextView.text
        }
    }
}
extension FourthTabBarViewController: UITextViewDelegate{
    func textViewDidEndEditing(_ textView: UITextView) {
        textView.resignFirstResponder()
    }
}
