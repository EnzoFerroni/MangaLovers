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
    
    let bgImageView: UIImageView = {
        let bgImageView = UIImageView()
        bgImageView.contentMode = .scaleAspectFill
        bgImageView.clipsToBounds = true
        bgImageView.translatesAutoresizingMaskIntoConstraints = false
        bgImageView.image = UIImage(named: "bgImage")
        
        return bgImageView
    }()
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
        setupConstraints()
        
    }
    
    func setup() {
                
        addSubview(numberLabel)
        addSubview(textLabel)
        addSubview(bgImageView)
        sendSubviewToBack(bgImageView)
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.clipsToBounds = true
        self.layer.borderColor = UIColor.redManga.cgColor
        self.layer.borderWidth = 5
        self.layer.cornerRadius = 61
                
    }
    
    func setupConstraints() {
                
        NSLayoutConstraint.activate([
            
            numberLabel.topAnchor.constraint(equalTo: topAnchor, constant: -20),
            numberLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -14),
            numberLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            numberLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12),
            
            textLabel.topAnchor.constraint(equalTo: numberLabel.topAnchor, constant: 85),
            textLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -6),
            textLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 53),
            textLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -53),
            
            bgImageView.topAnchor.constraint(equalTo: topAnchor),
            bgImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            bgImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -6),
            bgImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -14),
            
        ])
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

#Preview {
    DateView()
}
