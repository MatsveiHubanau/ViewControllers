//
//  SecondController.swift
//  01.10
//
//  Created by Admin on 1.10.22.
//

import UIKit

class SecondController: UIViewController {
        var backGroundColor = UIColor.yellow
    var backMessage = GoBackMessage(firstMessage: "", secondMessage: "")
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = backGroundColor
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func PresentTC(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let parentViewController = presentedViewController as?  FirstController else { return}
        parentViewController.backMessage = backMessage
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        guard let parentViewController = presentedViewController as?  FirstController else { return}
        parentViewController.backMessage = backMessage
    }
}
