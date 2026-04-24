//
//  GraficView.swift
//  Checkin-UIKit
//
//  Created by Leonardo Cruz on 23/04/26.
//

import Foundation
import UIKit

class GraficView : UIView{
    

    
    
    let textView : UILabel = {
        let txt = UILabel()
        txt.text = "Rendimentos"
        txt.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        return txt
    }()
    
    
    let imageView : UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "Grafico")
        
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    
    let viewGrafic : UIView = {
        let vw = UIView()
        vw.translatesAutoresizingMaskIntoConstraints = false
        vw.backgroundColor = UIColor(named: "BackgroundGrafic")
        return vw
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
        self.layer.borderColor = UIColor.red.cgColor
        self.layer.borderWidth = 2
    }
    
    
    
    func setupConstraint(){
        backgroundColor = UIColor(named: "BackgroundGrafic")
        addSubview(imageView)
        addSubview(textView)
        
        NSLayoutConstraint.activate([
        
            
            imageView.topAnchor.constraint(equalTo: topAnchor, constant: 24),
            
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 100),
            
            
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -132),
            
            
            imageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -24),
            
        ])
    }
    
}


#Preview{
    let val = GraficView()
    return val
}
