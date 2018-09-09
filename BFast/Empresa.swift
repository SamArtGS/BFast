//
//  Empresa.swift
//  BFast
//
//  Created by Samuel Arturo Garrido Sánchez on 08/09/18.
//  Copyright © 2018 Master Scores. All rights reserved.
//

import UIKit

class Empresa: UIViewController,UICollectionViewDelegateFlowLayout,UICollectionViewDataSource, UICollectionViewDelegate{
    @IBOutlet weak var Categoria: UICollectionView!
    var modelos : [String] = ["Prestamo1","Prestamo2","Datos","Productos","Empleados","Historial","Grafos","Recomendaciones"]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Categoria", for: indexPath) as! CollectionViewCell
        cell.layer.cornerRadius = 20
        cell.imagenCategs.image = UIImage(named: modelos[indexPath.row])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 150, height: 150)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 20, left: 25, bottom: 20, right: 25)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        Categoria.delegate = self
        Categoria.dataSource = self
        

        // Do any additional setup after loading the view.
    }
}
