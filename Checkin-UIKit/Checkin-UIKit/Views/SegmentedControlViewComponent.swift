//
//  SegmentedControlViewComponent.swift
//  Checkin-UIKit
//
//  Created by Lucca Pivoto on 24/04/26.
//

import UIKit

class SegmentedControlViewComponent: UIViewController{
    
    
    var selector = UISegmentedControl(items: ["Visão Geral", "Detalhes", "Perfil"])
    
    let grafic = GraficView()
    let rendimentosView = RendimentosView()
    let cardView = CardView()
    
    
    let bigSquare: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        view.backgroundColor = .clear
        view.layer.borderWidth = 4
        view.layer.borderColor = UIColor.redManga.cgColor
        view.layer.zPosition = -1

        return view
    }()
    
    let restitution: RestitutionComponentView = {
        let restitution = RestitutionComponentView()
        restitution.setUpValues("Restituição", "1.980,00")
        restitution.translatesAutoresizingMaskIntoConstraints = false
        return restitution
    }()
    
    let impostos: RestitutionComponentView = {
        let impostos = RestitutionComponentView()
        impostos.setUpValues("Imposto", "4.760,09")
        impostos.translatesAutoresizingMaskIntoConstraints = false
        return impostos
    }()
    
    let visionLabel: UILabel = {
        let textLabel = UILabel()
        textLabel.textAlignment = .center
        textLabel.font = UIFont(name: "DrawClose", size: 124)
        textLabel.text = "VISÃO GERAL"
        textLabel.textColor = UIColor.black
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        return textLabel
        
    }()
    
    let rendimentoLabel: UILabel = {
        let textLabel = UILabel()
        textLabel.textAlignment = .center
        textLabel.font = UIFont.systemFont(ofSize: 58.0, weight: .bold, width: .compressed)
        textLabel.text = "RENDIMENTO"
        textLabel.textColor = UIColor.redManga
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        return textLabel
        
    }()
    
    override func viewDidLoad() {
        
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
        view.addSubview(selector)
        view.addSubview(bigSquare)
        view.addSubview(visionLabel)
        view.addSubview(restitution)
        view.addSubview(impostos)
        view.addSubview(rendimentoLabel)
        view.addSubview(grafic)
        view.addSubview(rendimentosView)
        view.addSubview(cardView)
        
    }
    
    func setUpConstraints(){
        
        grafic.translatesAutoresizingMaskIntoConstraints = false
        rendimentosView.translatesAutoresizingMaskIntoConstraints = false
        cardView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            //segment
            selector.topAnchor.constraint(equalTo: view.topAnchor, constant: 68),
            selector.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 89),
            selector.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -89),
            
            
            visionLabel.topAnchor.constraint(equalTo: selector.bottomAnchor, constant: 41),
            visionLabel.leadingAnchor.constraint(equalTo: selector.leadingAnchor, constant: 5),
            
            bigSquare.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 56),
            bigSquare.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -56),
            bigSquare.topAnchor.constraint(equalTo: selector.bottomAnchor, constant: 100),
            bigSquare.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -54),
            
            restitution.leadingAnchor.constraint(equalTo: bigSquare.leadingAnchor, constant: -30),
            restitution.topAnchor.constraint(equalTo: bigSquare.topAnchor, constant: 76),
            
            impostos.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 248),
            impostos.topAnchor.constraint(equalTo: bigSquare.topAnchor, constant: 76),
            
            rendimentoLabel.topAnchor.constraint(equalTo: restitution.bottomAnchor, constant: 56),
            rendimentoLabel.leadingAnchor.constraint(equalTo: restitution.leadingAnchor, constant: 100),
            
            grafic.topAnchor.constraint(equalTo: rendimentoLabel.bottomAnchor, constant: -15),
            grafic.leadingAnchor.constraint(equalTo: rendimentoLabel.leadingAnchor),
            grafic.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -102),
            
            
            rendimentosView.topAnchor.constraint(equalTo: grafic.bottomAnchor, constant: 133),
            rendimentosView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 136),
            
            cardView.topAnchor.constraint(equalTo: grafic.bottomAnchor, constant: 200),
            cardView.leadingAnchor.constraint(equalTo: rendimentosView.leadingAnchor, constant: 470)
            
            
            
            
        ])
    }
    
    
}

#Preview(){
    let vc = SegmentedControlViewComponent()
    return vc
}
