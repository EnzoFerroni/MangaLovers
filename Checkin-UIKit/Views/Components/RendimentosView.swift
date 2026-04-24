//
//  RendimentosView.swift
//  Checkin-UIKit
//
//  Created by Leonardo Cruz on 24/04/26.
//

import Foundation
import UIKit

class RendimentosView : UIView {
    
    
    let textCard : UILabel = {
        
        let txtOficial = UILabel()
        
        let txt1 = "Banco do Brasil\n"
        let txt2 = "José Augusto\n"
        let txt3 = "Ultima Adição\n"
        let txt4 = "15/03/2025"
        let textoCard = txt1 + txt2 + txt3 + txt4
        let atribuido = NSMutableAttributedString(string: textoCard)
     
        
        let range1 = (textoCard as NSString).range(of: txt1)
        atribuido.addAttribute(.font, value: UIFont.systemFont(ofSize: 28, weight: .bold), range: range1)
        atribuido.addAttribute(.foregroundColor, value: UIColor(named: "BackgroundGrafic")!, range: range1)
        
        
        let range2 =  (textoCard as NSString).range(of: txt2)
        atribuido.addAttribute(.font, value: UIFont.systemFont(ofSize: 20, weight: .regular), range: range2)
        atribuido.addAttribute(.foregroundColor, value: UIColor(named: "BackgroundGrafic")!, range: range2)
        
        
        let range3 = (textoCard as NSString).range(of: txt3)
        atribuido.addAttribute(.font, value: UIFont.systemFont(ofSize: 19), range: range3)
        atribuido.addAttribute(.foregroundColor, value: UIColor(named: "BackgroundGrafic")!, range: range3)
        
        
        let range4 = (textoCard as NSString).range(of: txt4)
        atribuido.addAttribute(.font, value: UIFont.systemFont(ofSize: 15), range: range4)
        atribuido.addAttribute(.foregroundColor, value: UIColor(named: "BackgroundGrafic")!, range: range4)
        
        txtOficial.numberOfLines = 0
        txtOficial.attributedText = atribuido
        txtOficial.translatesAutoresizingMaskIntoConstraints = false
    
        
        return txtOficial
        
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupConstraint()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = 16
        self.layer.borderColor = UIColor(named: "BackgroundGrafic")?.cgColor
        self.layer.borderWidth = 2
        self.backgroundColor = .clear
    }
    
    
    
    
    func setupConstraint(){
        addSubview(textCard)
        
        NSLayoutConstraint.activate([
            textCard.topAnchor.constraint(equalTo: topAnchor, constant: 12),
            textCard.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 14),
            textCard.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -93),
            textCard.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -30)
        ])
    }
}


#Preview{
    let val = RendimentosView()
    return val
}


