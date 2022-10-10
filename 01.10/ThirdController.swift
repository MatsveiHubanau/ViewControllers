//
//  ThirdViewController.swift
//  01.10
//
//  Created by Admin on 1.10.22.
//

import UIKit

class ThirdController: UIViewController {
    var backMessage = GoBackMessage(firstMessage: "", secondMessage: "")
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        // Do any additional setup after loading the view.
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        guard let parentViewController = presentedViewController as?  SecondController else { return}
        parentViewController.backMessage = backMessage
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
