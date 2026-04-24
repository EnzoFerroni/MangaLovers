//
//  RestitutionComponentView.swift
//  Checkin-UIKit
//
//  Created by Lucca Pivoto on 23/04/26.
//

import UIKit

struct Fonts{
    static let DrawClose = "DrawClose"
}
class RestitutionComponentView: UIView {

    let restitutionText: UILabel = {
        let numberLabel = UILabel()
        numberLabel.textAlignment = .center
        numberLabel.font = UIFont(name: "DrawClose", size: 30)
        numberLabel.text = "Restituição"
        numberLabel.textColor = .label
        numberLabel.translatesAutoresizingMaskIntoConstraints = false
        return numberLabel
    }()
    
    
    let r$: UILabel = {
        let r$ = UILabel()
        r$.textAlignment = .left
        r$.font = UIFont(name: "DrawClose", size: 44)
        r$.text = "R$"
        r$.textColor = UIColor(named: "RedManga")
        r$.translatesAutoresizingMaskIntoConstraints = false
        return r$
    }()
    
    let moneyText: UILabel = {
        let moneyText = UILabel()
        moneyText.textAlignment = .left
        moneyText.font = UIFont.systemFont(ofSize: 58, weight: .bold , width: .compressed)
        moneyText.text = "1980,00"
        moneyText.textColor = .label
        moneyText.translatesAutoresizingMaskIntoConstraints = false
        return moneyText
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
        setUpConstrainrs()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUp(){
        addSubview(restitutionText)
        addSubview(r$)
        addSubview(moneyText)
    }
    
    func setUpConstrainrs(){
        
        NSLayoutConstraint.activate([
            
            restitutionText.centerXAnchor.constraint(equalTo: centerXAnchor),
            restitutionText.centerYAnchor.constraint(equalTo: centerYAnchor) ,
            
            r$.topAnchor.constraint(equalTo: restitutionText.bottomAnchor , constant: 16) ,
            r$.bottomAnchor.constraint(equalTo: bottomAnchor , constant: 8) ,
            r$.leadingAnchor.constraint(equalTo: restitutionText.leadingAnchor) ,
//            r$.trailingAnchor.constraint(equalTo: trailingAnchor , constant: -16) ,
            
            moneyText.topAnchor.constraint(equalTo: restitutionText.bottomAnchor , constant: 16) ,
            moneyText.bottomAnchor.constraint(equalTo: bottomAnchor , constant: 8) ,
            moneyText.leadingAnchor.constraint(equalTo: r$.trailingAnchor , constant: 16) ,
            moneyText.trailingAnchor.constraint(equalTo: trailingAnchor , constant: -16) ,

        ])
        
    }
    
}

#Preview(){
    let uv = RestitutionComponentView()
    return uv
}
