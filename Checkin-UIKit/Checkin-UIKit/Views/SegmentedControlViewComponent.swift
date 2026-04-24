//
//  SegmentedControlViewComponent.swift
//  Checkin-UIKit
//
//  Created by Lucca Pivoto on 24/04/26.
//

import UIKit

class SegmentedControlViewComponent: UIViewController{
    
    let testView = RestitutionComponentView()
    
    var selector = UISegmentedControl(items: ["Visão Geral", "Detalhes", "Perfil"])
    
    override func viewDidLoad() {
        testView.setUpValues("Imposto", "1970.00")
        testView.translatesAutoresizingMaskIntoConstraints = false
    }
    
//    func configureSegmentedControl
    
    func setUp(){
        view.addSubview(testView)
    }
    
    func setUpConstraints(){
        
        NSLayoutConstraint.activate([
            testView.topAnchor.constraint(equalTo: view.topAnchor) ,
            testView.bottomAnchor.constraint(equalTo: view.bottomAnchor) ,
            testView.leadingAnchor.constraint(equalTo: view.leadingAnchor) ,
            testView.trailingAnchor.constraint(equalTo: view.trailingAnchor) ,
        ])
    }
}

#Preview(){
    let vc = SegmentedControlViewComponent()
    return vc
}
