//
//  Informes.swift
//  BFast
//
//  Created by Samuel Arturo Garrido Sánchez on 08/09/18.
//  Copyright © 2018 Master Scores. All rights reserved.
//

import UIKit

class Informes: UIViewController,UITableViewDelegate,UITableViewDataSource{
    @IBOutlet weak var Extras: UITableView!
    var contenidoCeldas = ["     Domingo 9 Septiembre ","Paidfrom *4341","Paidfrom *5341","Paidfrom *6532","Paidfrom *8351","Paidfrom *6114","Paidfrom *1103","Paidfrom *5123"," ","     Sábado 8 Septiembre","Paidfrom *1042","Paidfrom *9244","Paidfrom *1943","Paidfrom *9332","Paidfrom *5531","Paidfrom *2332","Paidfrom *0201"]
    var pagos = ["","$42.50","$84.75","$15.00","$7.30","$52.50","$97.70","$47.20","","","$22.40","$71.70","$63.20","$33.50","$29.50","$17.60","$150.40"]
    override func viewDidLoad() {
        super.viewDidLoad()
        Extras.backgroundColor = .clear
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contenidoCeldas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = UITableViewCell(style:UITableViewCellStyle.value1,reuseIdentifier:"Cella")
        celda.textLabel?.text = contenidoCeldas[indexPath.row]
        celda.detailTextLabel?.text = pagos[indexPath.row]
        celda.backgroundColor = .clear
        return celda
    }
    

}
