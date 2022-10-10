//
//  ViewController.swift
//  01.10
//
//  Created by Admin on 1.10.22.
//

import UIKit
// MARK: Labels
class FirstController: UIViewController {
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    
    var backMessage = GoBackMessage (firstMessage: "", secondMessage: "") {
        willSet (newMessage) {
            firstLabel.text = newMessage.firstMessage
            secondLabel.text = newMessage.secondMessage
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    //  public func visability(_ bool: Bool) {
    //      firstLabel.isHidden = bool
    //      secondLabel.isHidden = bool
    //      thirdLabel.isHidden = bool
    //  }
    
// SC - SecondController, as well
    @IBAction func PresentSC(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let secondVC = storyboard.instantiateViewController(withIdentifier: "SecondController") as? SecondController else { return }
        present(secondVC, animated: true)
    }
}

