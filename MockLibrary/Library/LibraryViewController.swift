//
//  LibraryViewController.swift
//  MockLibrary
//
//  Created by Itzel Ibanez on 06/02/22.
//

import Foundation
import UIKit

class LibraryViewController : UIViewController {
    
    
    var holaLabel : UILabel?
    var signOutButton: UIButton?
    var booksButton : UIButton?
    var categoryButton : UIButton?
    var authorsButton : UIButton?
    
    var width = UIScreen.main.bounds.width
    var heigth = UIScreen.main.bounds.width
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        
        initUI()
        
}

    
    func initUI(){
        
        holaLabel = UILabel(frame: CGRect(x: 20, y: 60, width: 170, height: 60))
        holaLabel?.textAlignment = .left
        // Busca la forma de unir nombre de usuario tomandolo de tu sign in
        holaLabel?.text = "Hola! Usuario"
        holaLabel?.backgroundColor = .purple
        view.addSubview(holaLabel!)
        
        
        signOutButton = UIButton(frame: CGRect(x: 250, y: 60, width: 170, height: 20))
        signOutButton?.setTitle("Cerrar Sesion", for: .normal)
        signOutButton?.tintColor = .purple
        let tapSignOut = UITapGestureRecognizer(target: self, action: #selector(tapSignOut))
        signOutButton?.addGestureRecognizer(tapSignOut)
        view.addSubview(signOutButton!)
        
        
        booksButton = UIButton(frame: CGRect(x: 20, y: 200, width: 100, height: 60))
        booksButton?.setTitle("Libros", for: .normal)
        booksButton?.tintColor = .purple
        view.addSubview(booksButton!)
        
        
        categoryButton = UIButton(frame: CGRect(x: 160, y: 200, width: 100, height: 60))
        categoryButton?.setTitle("Categorias", for: .normal)
        categoryButton?.tintColor = .purple
        view.addSubview(categoryButton!)
        
        
        authorsButton = UIButton(frame: CGRect(x: 290, y: 200, width: 100, height: 60))
        authorsButton?.setTitle("Autores", for: .normal)
        authorsButton?.tintColor = .purple
        view.addSubview(authorsButton!)
        
        
        
        
        
    }
    
    @objc func tapSignOut (){
        print("salir sesion")
       let ViewController = ViewController()
        ViewController.modalPresentationStyle = .fullScreen
            present(ViewController, animated: true, completion: nil)
        
        
        
        
    }
    
    

}


