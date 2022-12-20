//
//  ViewController.swift
//  DenemeProject
//
//  Created by Ahmet GÜVENDİK on 18.12.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var Indicator: UIActivityIndicatorView!
    @IBOutlet weak var errorText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        label.font=UIFont.systemFont(ofSize: 24)
        label.textColor = UIColor.red
        errorText.isHidden=true
        errorText.textColor = UIColor.red
    }
    
    
    @IBAction func didTapButton(_ sender: UIButton) {
//        print("Kullanıcı Adı:  \(usernameTextField.text ?? "")")
//        print("Şifre: \(passwordTextField.text ?? "")")
        if usernameTextField.text == "Ahmet",passwordTextField.isHidden{
            passwordTextField.isHidden = false
            errorText.isHidden=true
        }else{
            if usernameTextField.text != "Ahmet"{
                errorText.text = "Hata"
                errorText.isHidden=false
            }
            else if passwordTextField.isHidden == false,passwordTextField.text=="123"{
                Indicator.startAnimating()
                errorText.isHidden = true
            }
            else if passwordTextField.text != "123"{
                errorText.text = "Hata Şifre"
                errorText.isHidden=false
                
            }
        }
    }
    
}

