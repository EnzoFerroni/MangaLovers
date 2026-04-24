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
    
    let titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.textAlignment = .center
        titleLabel.font = UIFont(name: "DrawClose", size: 30)
        titleLabel.text = "Restituição"
        titleLabel.textColor = .label
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        return titleLabel
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
        addSubview(titleLabel)
        addSubview(r$)
        addSubview(moneyText)
        
    }
    
    func setUpValues (_ moneyTxt: String , _ value: String){
        titleLabel.text = moneyTxt
        moneyText.text = value
    }
    
    func setUpConstrainrs(){
        NSLayoutConstraint.activate([

            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor) ,
            
            r$.topAnchor.constraint(equalTo: titleLabel.bottomAnchor , constant: 16) ,
            r$.bottomAnchor.constraint(equalTo: bottomAnchor , constant: 8) ,
            r$.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor) ,
            
            moneyText.topAnchor.constraint(equalTo: titleLabel.bottomAnchor , constant: 16) ,
            moneyText.bottomAnchor.constraint(equalTo: bottomAnchor , constant: 8) ,
            moneyText.leadingAnchor.constraint(equalTo: r$.trailingAnchor , constant: 16) ,
            moneyText.trailingAnchor.constraint(equalTo: trailingAnchor) ,
        ])
        
    }
    
}

#Preview(){
    let uv = RestitutionComponentView()
    uv.setUpValues("Restituição", "1.980,00")
    return uv
}
