//
//  DateView.swift
//  Checkin-UIKit
//
//  Created by Enzo Ferroni on 23/04/26.
//

import Foundation
import UIKit

class LabelComplement: UIView {
    
    
    
    let numberLabel: UITextField = {
        let numberLabel = UITextField()
        numberLabel.textAlignment = .center
        numberLabel.font = UIFont.systemFont(ofSize: 58, weight: .bold, width: .compressed)
        numberLabel.textColor = UIColor(named: "RedManga")
        numberLabel.translatesAutoresizingMaskIntoConstraints = false
        numberLabel.keyboardType = .numberPad
        return numberLabel
    }()
    
   
    
    let bgImageView: UIImageView = {
        let bgImageView = UIImageView()
//        bgImageView.contentMode = .scaleAspectFill
        bgImageView.clipsToBounds = true
        bgImageView.translatesAutoresizingMaskIntoConstraints = false
        bgImageView.image = UIImage(named: "bgImage")
        
        return bgImageView
    }()
        
    init(frame: CGRect, text: String) {
        super.init(frame: frame)
        
        setup()
        setupConstraints(text: text)
        
    }
    
    func setup() {
                
        addSubview(numberLabel)
        addSubview(bgImageView)
        sendSubviewToBack(bgImageView)
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.clipsToBounds = true
        self.layer.borderColor = UIColor.redManga.cgColor
        self.layer.borderWidth = 3
        self.layer.cornerRadius = 61
                
    }
    
    func setupConstraints(text: String) {
        
        numberLabel.text = text
        NSLayoutConstraint.activate([
            
            numberLabel.topAnchor.constraint(equalTo: topAnchor),
            numberLabel.bottomAnchor.constraint(equalTo: bottomAnchor),
            numberLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            numberLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
        
            
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
    LabelComplement(frame: .zero, text: "63")
}
