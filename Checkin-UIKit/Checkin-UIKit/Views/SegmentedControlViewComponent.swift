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
        
        configureSegmentedControl()
        setUp()
        setUpConstraints()
    }
    
    func configureSegmentedControl() {
        selector.selectedSegmentIndex = 0
        selector.translatesAutoresizingMaskIntoConstraints = false
        selector.selectedSegmentTintColor = UIColor(named: "OffWhiteColor") ?? .systemBackground
        selector.backgroundColor = .clear
    }
    
    func setUp(){
        view.addSubview(testView)
        view.addSubview(selector)
    }
    
    func setUpConstraints(){
        
        NSLayoutConstraint.activate([
            testView.topAnchor.constraint(equalTo: view.topAnchor) ,
            testView.bottomAnchor.constraint(equalTo: view.bottomAnchor) ,
            testView.leadingAnchor.constraint(equalTo: view.leadingAnchor) ,
            testView.trailingAnchor.constraint(equalTo: view.trailingAnchor) ,
            
            selector.topAnchor.constraint(equalTo: view.topAnchor, constant: 16),
            selector.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            selector.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
        ])
    }
}

#Preview(){
    let vc = SegmentedControlViewComponent()
    return vc
}
