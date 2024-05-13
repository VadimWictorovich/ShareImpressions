//
//  AuthorizationVC.swift
//  ShareImpressions
//
//  Created by Вадим Игнатенко on 12.05.24.
//

import UIKit

final class AuthorizationVC: UIViewController {
    
    // MARK: - Properties
    // TODO: Доделать UI элементы в плане размеров шрифтов цвета
    // TODO: Добавить кнопку настрокей в баре, добавить кнопки авторизации через сервисы Google Apple и иное

    // LABEL
    private lazy var welcomeLabel: UILabel = {
        let lab = UILabel()
        lab.translatesAutoresizingMaskIntoConstraints = false
        lab.text = "Welcome!"
        lab.textAlignment = .center
        lab.numberOfLines = 0
        return lab
    }()
    
    private lazy var errorLogPassLabel: UILabel = {
        let lab = UILabel()
        lab.translatesAutoresizingMaskIntoConstraints = false
        lab.text = "Вы ошиблись при вводе логина или пароля, попробуйте еще раз"
        lab.textColor = .red
        lab.isHidden = true
        lab.numberOfLines = 0
        return lab
    }()
    
    // TEXT FIELD
    private lazy var loginTF: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "  Введите логин"
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
    
    // BUTTON
    private lazy var signInButton: UIButton = {
        let but = UIButton()
        but.translatesAutoresizingMaskIntoConstraints = false
        but.setTitle("Войти", for: .normal)
        but.addTarget(nil, action: #selector(goToStartVC), for: .touchUpInside)
        but.layer.cornerRadius = 10
        but.layer.borderWidth = 2.0
        but.layer.borderColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
        return but
    }()
    
    private lazy var signUpButton: UIButton = {
        let but = UIButton()
        but.translatesAutoresizingMaskIntoConstraints = false
        but.setTitle("Регистрация", for: .normal)
        but.addTarget(nil, action: #selector(goToRegisterVC), for: .touchUpInside)
        but.layer.cornerRadius = 10
        but.layer.borderWidth = 2.0
        but.layer.borderColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
        return but
    }()
    
    // TODO: здесь все обдумать и доделать как что будет работать
    private lazy var faceIDButton: UIButton = {
        let but = UIButton()
        but.translatesAutoresizingMaskIntoConstraints = false
        but.backgroundColor = .red
        return but
    }()
    
    
    // MARK: - Lifecycle VC
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: - Methods
    private func setupUI() {
        view.addSubview(welcomeLabel)
        view.addSubview(errorLogPassLabel)
        view.addSubview(loginTF)
        view.addSubview(passwordTF)
        view.addSubview(signInButton)
        view.addSubview(signUpButton)
        view.addSubview(faceIDButton)
        setupNSLayoutConstraint()
    }
    
    // TODO: расставить констреинты позже!!!
    private func setupNSLayoutConstraint() {
        NSLayoutConstraint(item: welcomeLabel, attribute: .top, relatedBy: .equal, toItem: view, attribute: .topMargin, multiplier: 1.0, constant: 70).isActive = true
        NSLayoutConstraint(item: welcomeLabel, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailingMargin, multiplier: 1.0, constant: -20).isActive = true
        NSLayoutConstraint(item: welcomeLabel, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leadingMargin, multiplier: 1.0, constant: 20).isActive = true
        
        NSLayoutConstraint(item: faceIDButton, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottomMargin, multiplier: 1.0, constant: -80).isActive = true
        NSLayoutConstraint(item: faceIDButton, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerXWithinMargins, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: faceIDButton, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1.0, constant: 40).isActive = true
        NSLayoutConstraint(item: faceIDButton, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1.0, constant: 40).isActive = true
        
        
        NSLayoutConstraint(item: signUpButton, attribute: .bottom, relatedBy: .equal, toItem: faceIDButton, attribute: .bottomMargin, multiplier: 1.0, constant: -70).isActive = true
        NSLayoutConstraint(item: signUpButton, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leadingMargin, multiplier: 1.0, constant: 70).isActive = true
        NSLayoutConstraint(item: signUpButton, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailingMargin, multiplier: 1.0, constant: -70).isActive = true
        
        NSLayoutConstraint(item: signInButton, attribute: .bottom, relatedBy: .equal, toItem: signUpButton, attribute: .bottomMargin, multiplier: 1.0, constant: -40).isActive = true
        NSLayoutConstraint(item: signInButton, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leadingMargin, multiplier: 1.0, constant: 70).isActive = true
        NSLayoutConstraint(item: signInButton, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailingMargin, multiplier: 1.0, constant: -70).isActive = true
        
        NSLayoutConstraint(item: passwordTF, attribute: .bottom, relatedBy: .equal, toItem: signInButton, attribute: .bottomMargin, multiplier: 1.0, constant: -90).isActive = true
        NSLayoutConstraint(item: passwordTF, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leadingMargin, multiplier: 1.0, constant: 40).isActive = true
        NSLayoutConstraint(item: passwordTF, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailingMargin, multiplier: 1.0, constant: -40).isActive = true
        NSLayoutConstraint(item: passwordTF, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1.0, constant: 50).isActive = true
        
        NSLayoutConstraint(item: loginTF, attribute: .bottom, relatedBy: .equal, toItem: passwordTF, attribute: .bottomMargin, multiplier: 1.0, constant: -50).isActive = true
        NSLayoutConstraint(item: loginTF, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leadingMargin, multiplier: 1.0, constant: 40).isActive = true
        NSLayoutConstraint(item: loginTF, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailingMargin, multiplier: 1.0, constant: -40).isActive = true
        NSLayoutConstraint(item: loginTF, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1.0, constant: 50).isActive = true
    }
    
    // TODO: доделать обработку нажатия
    @objc private func goToStartVC() {
        let vc = HomeVC()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    // TODO: аналогично!!!!
    @objc private func goToRegisterVC() {
        let vc = SignUpVC()
        navigationController?.pushViewController(vc, animated: true)
    }
}
