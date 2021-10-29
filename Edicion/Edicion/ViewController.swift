//
//  ViewController.swift
//  Edicion
//
//  Created by Alumno on 10/28/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactos .count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //return UITableViewCell()
        let celda = tableView.dequeueReusableCell(withIdentifier: "CeldaContacto") as! CeldaContactoController
        celda.lblNombre.text = contactos[indexPath.row].nombre
        celda.lblCorreo.text = contactos[indexPath.row].correo
        celda.lblCelular.text = contactos[indexPath.row].celular
        return celda
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 235
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let contactoSeleccionado = contactos[tvContactos.indexPathForSelectedRow!.row]
    }
    
    
    @IBOutlet weak var tvContactos: UITableView!
    var contactos : [ Contacto] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title =  "Contactos"
        
        contactos.append(Contacto(nombre: "jose", celular: "678765678", correo: "jose@hotmail"))
        contactos.append(Contacto(nombre: "juan", celular: "456787896", correo: "juan@gmail"))
        
        
        
      
    }


}

