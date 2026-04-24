//
//  CardView.swift
//  Checkin-UIKit
//
//  Created by Enzo Ferroni on 24/04/26.
//

import UIKit

class CardView : UIView {
    
    let background: UIView = {
        let bgView = UIView()
        bgView.backgroundColor = .redManga
        bgView.translatesAutoresizingMaskIntoConstraints = false
        bgView.layer.cornerRadius = 15
        return bgView
    }()
    
    let categoryLabel : UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold, width: .compressed)
        label.textColor = .white
        label.textAlignment = .center
        label.text = "SAÚDE"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let occupationLabel : UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20, weight: .light, width: .compressed)
        label.textColor = .white
        label.textAlignment = .center
        label.text = "Médico"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let nameLabel : UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 28, weight: .light, width: .compressed)
        label.textColor = .white
        label.textAlignment = .center
        label.text = "João Almeida"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let cpfLabel : UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15, weight: .thin, width: .compressed)
        label.textColor = .white
        label.textAlignment = .center
        label.text = "514.985.898-63"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let moneyLabel : UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 28, weight: .light, width: .compressed)
        label.textColor = .white
        label.textAlignment = .center
        label.text = "300,00"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let r$ : UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15, weight: .thin, width: .compressed)
        label.textColor = .white
        label.textAlignment = .center
        label.text = "R$"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
        setupConstraints()
    }
    
    func setup() {
        addSubview(background)
        addSubview(categoryLabel)
        addSubview(occupationLabel)
        addSubview(nameLabel)
        addSubview(cpfLabel)
        addSubview(moneyLabel)
        addSubview(r$)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            
            background.centerXAnchor.constraint(equalTo: centerXAnchor),
            background.centerYAnchor.constraint(equalTo: centerYAnchor),
            background.widthAnchor.constraint(equalToConstant: 273),
            background.heightAnchor.constraint(equalToConstant: 107),
            
            categoryLabel.leadingAnchor.constraint(equalTo: background.leadingAnchor, constant: 18),
            categoryLabel.topAnchor.constraint(equalTo: background.topAnchor, constant: 8),
            
            occupationLabel.leadingAnchor.constraint(equalTo: categoryLabel.trailingAnchor, constant: 9),
            occupationLabel.topAnchor.constraint(equalTo: categoryLabel.topAnchor, constant: 4),
            
            nameLabel.topAnchor.constraint(equalTo: categoryLabel.bottomAnchor, constant: 6),
            nameLabel.leadingAnchor.constraint(equalTo: categoryLabel.leadingAnchor),
            
            cpfLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor),
            cpfLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            
            moneyLabel.trailingAnchor.constraint(equalTo: background.trailingAnchor, constant: -18),
            moneyLabel.bottomAnchor.constraint(equalTo: background.bottomAnchor, constant: -20),
            
            r$.trailingAnchor.constraint(equalTo: moneyLabel.leadingAnchor, constant: -11),
            r$.bottomAnchor.constraint(equalTo: moneyLabel.bottomAnchor, constant: -8)

        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

#Preview {
    CardView()
}
