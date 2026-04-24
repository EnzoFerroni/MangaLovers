//
//  DateView.swift
//  Checkin-UIKit
//
//  Created by Enzo Ferroni on 23/04/26.
//

import Foundation
import UIKit

class DateView: UIView {
    
    
    
    let numberLabel: UITextField = {
        let numberLabel = UITextField()
        numberLabel.textAlignment = .center
        numberLabel.font = UIFont.systemFont(ofSize: 58, weight: .bold, width: .compressed)
        numberLabel.text = "TEXT"
        numberLabel.textColor = UIColor(named: "RedManga")
        numberLabel.translatesAutoresizingMaskIntoConstraints = false
        numberLabel.keyboardType = .numberPad
        numberLabel.borderStyle = .line
        return numberLabel
    }()
    
    let textLabel: UILabel = {
        let textLabel = UILabel()
        textLabel.textAlignment = .center
        textLabel.font = UIFont.systemFont(ofSize: 48, weight: .light, width: .compressed)
        textLabel.text = "TEXT"
        textLabel.textColor = UIColor(named: "RedManga")
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        return textLabel
    }()
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
        setupConstraints()
        
    }
    
    func setup() {
                
        addSubview(numberLabel)
        addSubview(textLabel)
        
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.layer.borderColor = UIColor.blue.cgColor
        self.layer.borderWidth = 5
        
    }
    
    func setupConstraints() {
        backgroundColor = .red
        
        NSLayoutConstraint.activate([
            
            numberLabel.topAnchor.constraint(equalTo: topAnchor, constant: 14),
            numberLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -14),
            numberLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            numberLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12),

            textLabel.topAnchor.constraint(equalTo: numberLabel.bottomAnchor, constant: -20),
            textLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

#Preview {
    DateView()
}
