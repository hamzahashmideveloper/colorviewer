//
//  colordetailrvc.swift
//  Color testing app
//
//  Created by Developer on 03/09/2023.
//

import UIKit

class colordetailrvc: UIViewController {

    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor  = color ?? .blue

       
    }
    

    

}
