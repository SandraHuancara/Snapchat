//
//  ViewController.swift
//  lab11-3-snap
//
//  Created by cesar pacho on 7/11/23.
//

import UIKit
import FirebaseAuth
import FirebaseCore
import FirebaseDatabase
class iniciarSesionViewController: UIViewController {
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBAction func registrase(_ sender: Any) {
        self.performSegue(withIdentifier: "segueRegistrarse", sender: nil)
    }
    
    @IBAction func IniciarSesionTapped(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text! , password:passwordTextField.text!){(user , error) in
            print("intentando iniciar sesion")
            if error != nil{
                print("se presneto el siguiente error \(error)")
                self.mostrarAlerta(titulo: "error al iniciar sesion", mensaje: "deseas registrarte ?", accion: "aceptar")
            }else {
                print("incio de sesion exitoro")
                self.performSegue(withIdentifier: "iniciarsesionsegue", sender: nil)
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    func mostrarAlerta(titulo:String , mensaje:String , accion:String){
        let alerta = UIAlertController(title: titulo, message: mensaje, preferredStyle: .alert)
        
        let accionAceptar = UIAlertAction(title: accion, style: .default) { _ in
            // Esta es la acción que se ejecutará cuando se presione "Aceptar"
            self.performSegue(withIdentifier: "segueRegistrarse", sender: nil)
        }
        let cancelar = UIAlertAction(title: "Cancelar", style: .destructive , handler: nil)
        alerta.addAction(cancelar)
        alerta.addAction(accionAceptar)
        present(alerta, animated: true, completion: nil)
    }
    
    
    
    
    
}

