//
//  CrearTareaViewController.swift
//  EjemploTableView
//
//  Created by Alberto Cano Roca on 02/11/2023.
//

import UIKit

class CrearTareaViewController: UIViewController {

    @IBOutlet weak var txtTitulo: UITextField!
    
    @IBOutlet weak var txtContenido: UITextField!
    
    var delegate: ObtenerTarea?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

   
    
    @IBAction func btnInsertarTarea(_ sender: Any) {
        let titulo = txtTitulo.text!
        let contenido = txtContenido.text!
        
        if !titulo.isEmpty && !contenido.isEmpty {
            let tarea = Tarea(titulo: titulo, contenido: contenido)
            
            delegate?.obtener(dato: tarea)
            self.dismiss(animated: true, completion: nil)
        }
        
    }
    
}
