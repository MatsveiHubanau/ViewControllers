//
//  FifthViewController.swift
//  01.10
//
//  Created by Admin on 1.10.22.
//

import UIKit


class FifthViewController: UIViewController {
    var backMessage = GoBackMessage(firstMessage: "Вы кто такие?", secondMessage: "Я вас не звал")
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        let img: UIImage = UIImage(named: "Батон)")!
        self.view.layer.contents = img.cgImage
    }

@IBAction func lastButton(_ sender: UIButton){
    
}
override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    guard let parentViewController = presentedViewController as?  FourthViewController else { return}
    parentViewController.backMessage = backMessage
}

@IBSegueAction func lastSegue(_ coder: NSCoder) -> FirstController? {
    return FirstController(coder: coder)
  //  guard let parentViewController = presentedViewController as?  FirstController else { return}
   // parentViewController.backMessage = backMessage
}

}

