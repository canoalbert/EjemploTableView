//
//  ModificarViewController.swift
//  EjemploTableView
//
//  Created by Alberto Cano Roca on 09/11/2023.
//

import UIKit

class ModificarViewController: UIViewController {
    
    var tarea: Tarea!
    var delegate: ObtenerTarea!
    var posicion: Int!
    
    @IBOutlet weak var txtTitulo: UITextField!
    
    
    @IBOutlet weak var txtContenido: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtTitulo.text = tarea.titulo
        txtContenido.text = tarea.contenido

        // Do any additional setup after loading the view.
    }
    @IBAction func btnEliminar(_ sender: Any) {
        delegate.eliminar(posicion: posicion)
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func btnModificar(_ sender: Any) {
        if txtTitulo.text!.isEmpty || txtContenido.text!.isEmpty {
            let alert = UIAlertController(title: "ERROR", message: "Faltan Datos", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .destructive, handler: nil))
        }
        
        let nuevaTarea = Tarea(titulo: txtTitulo.text!, contenido: txtContenido.text!)
        delegate.modificar(posicion: posicion, nuevoDato: nuevaTarea)
        self.dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
