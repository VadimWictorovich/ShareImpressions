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
        tf.placeholder = "Введите логин"
        return tf
    }()
    
    private lazy var passwordTF: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "Введите пароль"
        return tf
    }()
    
    // BUTTON
    private lazy var signInButton: UIButton = {
        let but = UIButton()
        but.translatesAutoresizingMaskIntoConstraints = false
        but.setTitle("Войти", for: .normal)
        but.addTarget(nil, action: #selector(goToStartVC), for: .touchUpInside)
        return but
    }()
    
    private lazy var signUpButton: UIButton = {
        let but = UIButton()
        but.translatesAutoresizingMaskIntoConstraints = false
        but.setTitle("Регистрация", for: .normal)
        but.addTarget(nil, action: #selector(goToRegisterVC), for: .touchUpInside)
        return but
    }()
    
    // TODO: здесь все обдумать и доделать как что будет работать
    private lazy var faceIDButton: UIButton = {
        let but = UIButton()
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
        
    }
    
    // TODO: доделать обработку нажатия
    @objc private func goToStartVC() {
        
    }
    
    // TODO: аналогично!!!!
    @objc private func goToRegisterVC() {
        
    }
    
}
