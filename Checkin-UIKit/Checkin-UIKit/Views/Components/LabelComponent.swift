//
//  LabelComponent.swift
//  Checkin-UIKit
//
//  Created by João Pedro Pioltini de Oliveira on 23/04/26.
//
import UIKit


class LabelComponent: UIView{
    
    
    init(frame: CGRect, text: String){
        super.init(frame: frame)
        setupLabel(label: text)
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var square: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 61
        view.layer.borderColor = UIColor.redManga.cgColor
        view.layer.borderWidth = 3
        view.clipsToBounds = true
        
//
        let imageView = UIImageView(image: UIImage(named: "backgroundLabel"))
        imageView.contentMode = .scaleAspectFill
      
        view.addSubview(imageView)
//        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        view.sendSubviewToBack(imageView)
        
        return view
    }()

    //[(text)]
    
    
    let textLabel: UILabel = {

        let label = UILabel()
        label.textColor = .redManga
        label.font = UIFont.boldSystemFont(ofSize: 58)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
 
    func setupLabel(label: String){
        addSubview(square)
        square.addSubview(textLabel)
        textLabel.text = label
        
        NSLayoutConstraint.activate([
//            square.centerXAnchor.constraint(equalTo: centerXAnchor),
//            square.centerYAnchor.constraint(equalTo: centerYAnchor),
//            square.heightAnchor.constraint(equalToConstant: 130),
//            square.widthAnchor.constraint(equalToConstant: 486),
            
//            
            square.topAnchor.constraint(equalTo: topAnchor),
            square.bottomAnchor.constraint(equalTo: bottomAnchor),
            square.leadingAnchor.constraint(equalTo: leadingAnchor),
            square.trailingAnchor.constraint(equalTo: trailingAnchor),

            
            textLabel.centerXAnchor.constraint(equalTo: square.centerXAnchor),
            textLabel.centerYAnchor.constraint(equalTo: square.centerYAnchor),
            textLabel.leadingAnchor.constraint(equalTo: square.leadingAnchor, constant: 10),
            textLabel.trailingAnchor.constraint(equalTo: square.trailingAnchor, constant: -10)
        ])
    }
    
}


#Preview{
    let vc = LabelComponent(frame: .zero, text: "")
    vc
}


