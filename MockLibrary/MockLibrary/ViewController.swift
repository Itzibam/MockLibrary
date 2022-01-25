//
//  ViewController.swift
//  MockLibrary
//
//  Created by Itzel Ibanez on 23/01/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    // MARK: - Variables principales
    
    
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
    
    @objc func buttonLoginAction (_sender: Any){
        if (passwordTextField?.text?.isEmpty)! || (usernameTextField?.text?.isEmpty)!{
            print ("OMG is not working :(")
        } else {
            print("OMG is working ")
            
            let LibraryViewController = LibraryViewController()
            LibraryViewController.modalPresentationStyle = .fullScreen
            present(LibraryViewController, animated: true, completion: nil)
            
  //
        
        
        
       // print("OMG is working")
        
        
        
   //     var alertText = ""
   //     var access : Bool = true
        
        
   //    var username = usernameTextField?.text
   //        print(username)
        
        
  //      if let username = usernameTextField?.text{
  //          if let correctUsername = Bool (username){
  //              access = correctUsername
  //          } else {
  //              alertText = "Usuario incorrecto"
  //          }
            
        }
        
        
        
    }
    
// MARK: Validacion de registro
    
    
    @objc func tapSignIn (){
        print("OMG is working again")
       let SignInViewController = SignInViewController()
            present(SignInViewController, animated: true, completion: nil)
       
        
    }


    
    
    
    

 }

