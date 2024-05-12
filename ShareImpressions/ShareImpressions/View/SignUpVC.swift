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
        return lab
    }()
    
    private lazy var nameTF: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "Введите свое имя"
        return tf
    }()
    
    private lazy var usernameTF: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "Введите свой логин"
        return tf
    }()
    
    private lazy var passwordTF: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "Введите пароль"
        return tf
    }()
    
    private lazy var signUpButton: UIButton = {
        let but = UIButton()
        but.translatesAutoresizingMaskIntoConstraints = false
        but.setTitle("Регистрация", for: .normal)
        but.addTarget(nil, action: #selector(registorAtcion), for: .touchUpInside)
        return but
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()

    }
    
    private func setupUI() {
        view.addSubview(infoLabel)
        view.addSubview(nameTF)
        view.addSubview(usernameTF)
        view.addSubview(passwordTF)
        view.addSubview(signUpButton)
    }
    
    @objc private func registorAtcion() {
        
    }
}
