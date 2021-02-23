//
//  FromViewController.swift
//  SubmitValue-Back
//


import UIKit

class FromViewController :UIViewController{
    
    @IBOutlet var email: UITextField!
    @IBOutlet var isUpdate: UISwitch!
    @IBOutlet var interval: UIStepper!


    @IBAction func onSubmit(_ sender: Any) {
        
        // appDelegate 객체의 인스턴스를 가져온다.
        let ad = UIApplication.shared.delegate as? AppDelegate
        
        // 값을 저장한다
        ad?.paramEmail = self.email.text
        ad?.paramUpdate = self.isUpdate.isOn
        ad?.paramInterval = self.interval.value
        
        
        
        // 이전 화면으로 복귀
        self.presentingViewController?.dismiss(animated: true)
    }
    
}

