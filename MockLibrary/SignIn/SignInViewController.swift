//
//  SignInViewController.swift
//  MockLibrary
//
//  Created by Itzel Ibanez on 25/01/22.
//

import UIKit


  var topImageView: UIImageView?
  var backButton: UIButton?
//  var navigationView: UINavigationController?
  var signInLabel: UILabel?
  var userTextField: UITextField?
  var emailTextField: UITextField?
  var passwordTextField: UITextField?
  var repeatpasswordTextField: UITextField?
  var createButton: UIButton?


  var width = UIScreen.main.bounds.width
  var heigth = UIScreen.main.bounds.width


class SignInViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGray5

        // Do any additional setup after loading the view.
        
        initUI()
    }
    
    func initUI(){
        
        
        topImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: width - 0, height: 130))
        topImageView?.backgroundColor = .clear
        topImageView?.image = UIImage(named: "top")
        topImageView?.contentMode = .scaleAspectFit
        topImageView?.layer.masksToBounds = true
        view.addSubview(topImageView!)
        

        
        backButton = UIButton(frame: CGRect(x: 20, y: 20, width: 60, height: 45))
        backButton?.setImage(UIImage(named: "back"), for: .normal)
        backButton?.backgroundColor = .clear
        backButton?.setTitleColor(.systemBlue, for: .normal)
        backButton?.setTitle("ATRAS", for: .normal)
        backButton?.addTarget(self, action: #selector(backAction), for: .touchUpInside)
        view.addSubview(backButton!)
        
        
        
        signInLabel = UILabel(frame: CGRect(x: 20, y: 150, width: width - 40, height: 80))
        signInLabel?.textAlignment = .center
        signInLabel?.font = .boldSystemFont(ofSize: 20)
        signInLabel?.text = "Completa tus datos"
        signInLabel?.textColor = .black
        view.addSubview(signInLabel!)
        
        
     
        
        userTextField = UITextField(frame: CGRect(x:20, y:260, width: width - 40, height: 50))
        userTextField?.backgroundColor = .white
        userTextField?.placeholder = "Nombre de usuario"
        userTextField?.layer.cornerRadius = 8
        userTextField?.layer.borderColor = UIColor.black.cgColor
        userTextField?.layer.borderWidth = 1.5
        userTextField?.textAlignment = .center
        view.addSubview(userTextField!)
        
        emailTextField = UITextField(frame: CGRect(x:20, y:340, width: width - 40, height: 50))
        emailTextField?.backgroundColor = .white
        emailTextField?.placeholder = "Correo electronico"
        emailTextField?.layer.cornerRadius = 8
        emailTextField?.layer.borderColor = UIColor.black.cgColor
        emailTextField?.layer.borderWidth = 1.5
        emailTextField?.textAlignment = .center
        view.addSubview(emailTextField!)
        
        passwordTextField = UITextField(frame: CGRect(x:20, y:420, width: width - 40, height: 50))
        passwordTextField?.backgroundColor = .white
        passwordTextField?.placeholder = "Contraseña"
        passwordTextField?.layer.cornerRadius = 8
        passwordTextField?.layer.borderColor = UIColor.black.cgColor
        passwordTextField?.layer.borderWidth = 1.5
        passwordTextField?.isSecureTextEntry = true
        passwordTextField?.textAlignment = .center
        view.addSubview(passwordTextField!)
        
        
        repeatpasswordTextField = UITextField(frame: CGRect(x:20, y:500, width: width - 40, height: 50))
        repeatpasswordTextField?.backgroundColor = .white
        repeatpasswordTextField?.placeholder = "Confirmar contraseña"
        repeatpasswordTextField?.layer.cornerRadius = 8
        repeatpasswordTextField?.layer.borderColor = UIColor.black.cgColor
        repeatpasswordTextField?.layer.borderWidth = 1.5
        repeatpasswordTextField?.isSecureTextEntry = true
        repeatpasswordTextField?.textAlignment = .center
        view.addSubview(repeatpasswordTextField!)
        
        
        createButton = UIButton(frame: CGRect(x: 50, y: 630, width: width - 100 , height: 60))
        createButton?.backgroundColor = .systemBlue
        createButton?.layer.cornerRadius = 18
        createButton?.setTitleColor(.white, for: .normal)
        createButton?.setTitle("CREAR", for: .normal)
        createButton?.addTarget(self, action: #selector(goToLibrary), for: .touchUpInside)
        view.addSubview(createButton!)
        
        
        
    }
    
    var alertText = ""
    
    @objc func backAction(){
            print("back")
            dismiss(animated: true)
        }
    
    @IBAction func goToLibrary(_ sender: Any) {
            if (userTextField?.text?.isEmpty)! || (emailTextField?.text?.isEmpty)! || (passwordTextField?.text?.isEmpty)! || (repeatpasswordTextField?.text?.isEmpty)!  {
              print("Text field is empty")
                let alert = UIAlertController(title: "Campos vacios", message: "Por favor, complete la informacion requerida", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Aceptar", style: .default, handler: nil))
                self.present(alert, animated: true, completion: nil)
                
           } else {
               print("Access Library")
               let LibraryViewController = LibraryViewController()
               LibraryViewController.modalPresentationStyle = .fullScreen
               present(LibraryViewController, animated: true, completion: nil)
           }
    
    
    

}

}
