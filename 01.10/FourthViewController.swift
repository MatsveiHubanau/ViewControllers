//
//  FourthViewController.swift
//  01.10
//
//  Created by Admin on 1.10.22.
//

import UIKit


class FourthViewController: UIViewController {

    var backMessage = GoBackMessage(firstMessage: "", secondMessage: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func PresentFifthController(_ sender: Any) {
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let lastController = storyboard.instantiateViewController(withIdentifier: "FifthViewController") as? FifthViewController else { return }
        present(lastController, animated: true)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        guard let parentViewController = presentedViewController as?  ThirdController else { return}
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
