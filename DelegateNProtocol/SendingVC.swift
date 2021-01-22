//
//  SendingVC.swift
//  DelegateNProtocol


import UIKit

class SendingVC: UIViewController {

    var delegate : SendTextDelegate? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var textField: UITextField!
    @IBAction func sendButtonPressed(_ sender: UIButton) {
        if let text = textField.text{
            delegate?.sendData(text)
            dismiss(animated: true, completion: nil)
        }
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
