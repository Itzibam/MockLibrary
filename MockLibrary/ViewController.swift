//
//  ViewController.swift
//  MockLibrary
//
//  Created by Itzel Ibanez on 23/01/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    // MARK: - Variables principales
    
    var bannerImageView : UIImageView?
    var iconImageView : UIImageView?
    var welcomeLabel : UILabel?
    var usernameTextField : UITextField?
    var passwordTextField : UITextField?
    var loginButton : UIButton?
    var signinButton : UIButton?
    
    
    var width = UIScreen.main.bounds.width
    var heigth = UIScreen.main.bounds.width
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray5
        initUI()
        
    }
    
    
    func initUI(){
//     Valora si vale la pena tener este banner
        bannerImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: width - 0, height: 200))
        bannerImageView?.backgroundColor = .clear
        bannerImageView?.image = UIImage(named: "Banner")
        bannerImageView?.layer.masksToBounds = true
        view.addSubview(bannerImageView!)
        
        
        
        iconImageView = UIImageView(frame: CGRect(x: 100, y: 100, width: width - 200, height: 170))
        iconImageView?.backgroundColor = .clear
        iconImageView?.image = UIImage(named: "icon 1")
        
        
        view.addSubview(iconImageView!)
        
        
        
        
        welcomeLabel = UILabel(frame: CGRect(x: 20, y: 300, width: width - 40, height: 80))
        welcomeLabel?.textAlignment = .center
        welcomeLabel?.font = .boldSystemFont(ofSize: 60)
        welcomeLabel?.text = "¡Bienvenido!"
        welcomeLabel?.textColor = .black
        view.addSubview(welcomeLabel!)
        
        
        
        
        usernameTextField = UITextField(frame: CGRect(x: 20, y: 450, width: width - 40, height: 50))
        usernameTextField?.backgroundColor = .white
        usernameTextField?.placeholder = "Ingrese su usuario"
        usernameTextField?.textAlignment = .center
        usernameTextField?.textContentType = .emailAddress
        usernameTextField?.layer.cornerRadius = 7
        usernameTextField?.layer.borderColor = UIColor.black.cgColor
        usernameTextField?.layer.borderWidth = 1
        view.addSubview(usernameTextField!)
        
       
        
        
        passwordTextField = UITextField(frame: CGRect(x: 20, y: 520, width: width - 40, height: 50))
        passwordTextField?.backgroundColor = .white
        passwordTextField?.placeholder = "Ingrese su contraseña"
        passwordTextField?.textAlignment = .center
        passwordTextField?.isSecureTextEntry = true
        passwordTextField?.layer.cornerRadius = 7
        passwordTextField?.layer.borderColor = UIColor.black.cgColor
        passwordTextField?.layer.borderWidth = 1
        view.addSubview(passwordTextField!)
        
        
        
        loginButton = UIButton(frame: CGRect(x: 20, y: 650, width: 170, height: 60))
        loginButton?.backgroundColor = .tintColor
        loginButton?.setTitle("Entrar", for: .normal)
        loginButton?.layer.cornerRadius = 7
        loginButton?.layer.borderColor = UIColor.gray.cgColor
        loginButton?.layer.borderWidth = 1
        loginButton?.addTarget(self, action: #selector(buttonLoginAction), for: .touchUpInside)
        view.addSubview(loginButton!)
    
        
        
        signinButton = UIButton(frame: CGRect(x: 220, y: 650, width: 170, height: 60))
        signinButton?.backgroundColor = .tintColor
        signinButton?.setTitle("Registrarse", for: .normal)
        signinButton?.layer.cornerRadius = 7
        signinButton?.layer.borderColor = UIColor.gray.cgColor
        signinButton?.layer.borderWidth = 1
        let tapSignin = UITapGestureRecognizer(target: self, action: #selector(tapSignIn))
        signinButton?.addGestureRecognizer(tapSignin)
        view.addSubview(signinButton!)
        
        
    }
    
    
// MARK: Validacion de log in
    
    var alertText = ""
    
    @objc func buttonLoginAction (_sender: Any){
        if (passwordTextField?.text?.isEmpty)! || (usernameTextField?.text?.isEmpty)!{
            print ("OMG is not working :(")
//            alertText = "Error en contraseña, verifique "
            let alert = UIAlertController(title: "Error de autenticacion", message: "Ingrese su usuario y/o contraseña", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Aceptar", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        } else {
            print("OMG is working ")
            
            let LibraryViewController = LibraryViewController()
            LibraryViewController.modalPresentationStyle = .fullScreen
            present(LibraryViewController, animated: true, completion: nil)
            
            
            
// MARK: Alerta que No esta funcionando
        }
//        else  do{
//            let loginAlert = UIAlertController(title: "esto es una alerta", message: "OK!", preferredStyle: .alert)
//            loginAlert.addAction(UIAlertAction(title: "entendido", style: .default, handler: nil))
//            self.present(loginAlert, animated: true, completion: nil)
    
        
        
        
        
    }
    
// MARK: Validacion de registro
    
    
    @objc func tapSignIn (){
        print("OMG is working again")
       let SignInViewController = SignInViewController()
            present(SignInViewController, animated: true, completion: nil)
       
        
    }


    
    
    
    

 }

    
