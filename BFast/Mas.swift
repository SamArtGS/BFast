//
//  Mas.swift
//  BFast
//
//  Created by Samuel Arturo Garrido Sánchez on 08/09/18.
//  Copyright © 2018 Master Scores. All rights reserved.
//

import UIKit

class Mas: UIViewController,UITableViewDelegate,UITableViewDataSource{
    var contenidoCeldas = [" "," ","Acerca de Bancomer"," ","Facebook"," ","Twitter"," ","Configuración"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contenidoCeldas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = UITableViewCell(style:UITableViewCellStyle.default,reuseIdentifier:"Cell")
        
        celda.textLabel?.text = contenidoCeldas[indexPath.row]
        celda.backgroundColor = .clear
        return celda
    }
    
    @IBOutlet weak var Extras: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Extras.backgroundColor = .clear
        Extras.delegate = self
        Extras.dataSource = self
    }
    
}
