//
//  ViewController.swift
//  DelegateNProtocol

import UIKit
protocol SendTextDelegate : class{
    func sendData(_ text: String)
}

class RecievingVC: UIViewController, SendTextDelegate {

    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func sendData(_ text: String) {
        label.text = text
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue"{
            let vc = segue.destination as! SendingVC
            vc.delegate = self
        }
    }
    
}

