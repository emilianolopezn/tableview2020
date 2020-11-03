//
//  ViewController.swift
//  practicatableview
//
//  Created by Emiliano Lopez on 11/3/20.
//  Copyright © 2020 Emiliano Lopez. All rights reserved.
//

import UIKit

//Implementar protocolos de Data Source y Delegate
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var alumnos : [Alumno] = []
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 78
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alumnos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaAlumno") as! CeldaAlumnoController
        
        celda.lblNombre.text = alumnos[indexPath.row].nombre
        celda.lblMatricula.text = alumnos[indexPath.row].matricula
        celda.lblCarrera.text = alumnos[indexPath.row].carrera
        
        return celda
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        alumnos.append(Alumno(nombre: "Jose González", matricula: "9867", carrera: "Lic. en Administración"))
        alumnos.append(Alumno(nombre: "Ana Martínez", matricula: "1234", carrera: "Ing. Industrial"))
        alumnos.append(Alumno(nombre: "Pedro López", matricula: "5427", carrera: "Lic. en Gastronomía"))
        alumnos.append(Alumno(nombre: "María Estrada", matricula: "3245", carrera: "Lic. en Derecho"))
    }
    
    
}

