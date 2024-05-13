//
//  SignUpVC.swift
//  ShareImpressions
//
//  Created by Вадим Игнатенко on 12.05.24.
//

import UIKit

final class SignUpVC: UIViewController {

    private lazy var infoLabel: UILabel = {
        let lab = UILabel()
        lab.translatesAutoresizingMaskIntoConstraints = false
        lab.text = "Пройдите регистрацию"
        lab.textAlignment = .center
        lab.numberOfLines = 0
        return lab
    }()
    
    private lazy var nameTF: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "  Введите свое имя"
        tf.layer.cornerRadius = 10
        tf.layer.borderWidth = 1.0
        tf.layer.borderColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        return tf
    }()
    
    private lazy var usernameTF: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "  Введите свой логин"
        tf.layer.cornerRadius = 10
        tf.layer.borderWidth = 1.0
        tf.layer.borderColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        return tf
    }()
    
    private lazy var passwordTF: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "  Введите пароль"
        tf.layer.cornerRadius = 10
        tf.layer.borderWidth = 1.0
        tf.layer.borderColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        return tf
    }()
    
    private lazy var dualPasswordTF: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "  Повторите пароль"
        tf.layer.cornerRadius = 10
        tf.layer.borderWidth = 1.0
        tf.layer.borderColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        return tf
    }()
    
    private lazy var signUpButton: UIButton = {
        let but = UIButton()
        but.translatesAutoresizingMaskIntoConstraints = false
        but.setTitle("Регистрация", for: .normal)
        but.addTarget(nil, action: #selector(registorAtcion), for: .touchUpInside)
        but.layer.cornerRadius = 10
        but.layer.borderWidth = 2.0
        but.layer.borderColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
        return but
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.3176470697, green: 0.07450980693, blue: 0.02745098062, alpha: 1)
        setupUI()
    }
    
    private func setupUI() {
        view.addSubview(infoLabel)
        view.addSubview(nameTF)
        view.addSubview(usernameTF)
        view.addSubview(passwordTF)
        view.addSubview(dualPasswordTF)
        view.addSubview(signUpButton)
        setupNSLayoutConstraint()
    }
    
    private func setupNSLayoutConstraint() {
        NSLayoutConstraint(item: infoLabel, attribute: .top, relatedBy: .equal, toItem: view, attribute: .topMargin, multiplier: 1.0, constant: 30).isActive = true
        NSLayoutConstraint(item: infoLabel, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailingMargin, multiplier: 1.0, constant: -20).isActive = true
        NSLayoutConstraint(item: infoLabel, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leadingMargin, multiplier: 1.0, constant: 20).isActive = true
        
        NSLayoutConstraint(item: nameTF, attribute: .top, relatedBy: .equal, toItem: infoLabel, attribute: .topMargin, multiplier: 1.0, constant: 80).isActive = true
        NSLayoutConstraint(item: nameTF, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leadingMargin, multiplier: 1.0, constant: 40).isActive = true
        NSLayoutConstraint(item: nameTF, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailingMargin, multiplier: 1.0, constant: -40).isActive = true
        NSLayoutConstraint(item: nameTF, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1.0, constant: 50).isActive = true
        
        NSLayoutConstraint(item: usernameTF, attribute: .top, relatedBy: .equal, toItem: nameTF, attribute: .topMargin, multiplier: 1.0, constant: 55).isActive = true
        NSLayoutConstraint(item: usernameTF, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leadingMargin, multiplier: 1.0, constant: 40).isActive = true
        NSLayoutConstraint(item: usernameTF, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailingMargin, multiplier: 1.0, constant: -40).isActive = true
        NSLayoutConstraint(item: usernameTF, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1.0, constant: 50).isActive = true
        
        NSLayoutConstraint(item: passwordTF, attribute: .top, relatedBy: .equal, toItem: usernameTF, attribute: .topMargin, multiplier: 1.0, constant: 55).isActive = true
        NSLayoutConstraint(item: passwordTF, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leadingMargin, multiplier: 1.0, constant: 40).isActive = true
        NSLayoutConstraint(item: passwordTF, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailingMargin, multiplier: 1.0, constant: -40).isActive = true
        NSLayoutConstraint(item: passwordTF, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1.0, constant: 50).isActive = true
        
        NSLayoutConstraint(item: dualPasswordTF, attribute: .top, relatedBy: .equal, toItem: passwordTF, attribute: .topMargin, multiplier: 1.0, constant: 55).isActive = true
        NSLayoutConstraint(item: dualPasswordTF, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leadingMargin, multiplier: 1.0, constant: 40).isActive = true
        NSLayoutConstraint(item: dualPasswordTF, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailingMargin, multiplier: 1.0, constant: -40).isActive = true
        NSLayoutConstraint(item: dualPasswordTF, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1.0, constant: 50).isActive = true
        
        NSLayoutConstraint(item: signUpButton, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottomMargin, multiplier: 1.0, constant: -40).isActive = true
        NSLayoutConstraint(item: signUpButton, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leadingMargin, multiplier: 1.0, constant: 70).isActive = true
        NSLayoutConstraint(item: signUpButton, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailingMargin, multiplier: 1.0, constant: -70).isActive = true
    }
    
    @objc private func registorAtcion() {
        navigationController?.popViewController(animated: true)
    }
}
