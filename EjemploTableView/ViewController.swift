//
//  ViewController.swift
//  EjemploTableView
//
//  Created by Alberto Cano Roca on 02/11/2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, ObtenerTarea {
    
    
    @IBOutlet weak var tablaTareas: UITableView!
    
    var listaTareas: [Tarea]!
    var tarea: Tarea!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listaTareas = []
        tablaTareas.delegate = self
        tablaTareas.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
            listaTareas.count
        }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "CELDA", for: indexPath) as! TableViewCellTableViewCell
        
        tarea = listaTareas[indexPath.row]
        celda.lblTitulo.text = tarea.titulo
        celda.lbContenido.text = tarea.contenido
        return celda
        
    }
    
    func obtener(dato: Tarea){
        listaTareas.append(dato)
        tablaTareas.reloadData()
    }
    
    func eliminar(posicion: Int) {
        listaTareas.remove(at: posicion)
        tablaTareas.reloadData()
    }
    
    
    func modificar(posicion: Int, nuevoDato: Tarea) {
        listaTareas[posicion] = nuevoDato
        tablaTareas.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "CREAR" {
            let destino = segue.destination as! CrearTareaViewController
            destino.delegate = self
        }
        if segue.identifier == "MODIFICAR" {
            let destino = segue.destination as! ModificarViewController
            destino.tarea = listaTareas[tablaTareas.indexPathForSelectedRow!.row]
            destino.posicion = tablaTareas.indexPathForSelectedRow!.row
            destino.delegate = self
            
        }
    }
        
}



