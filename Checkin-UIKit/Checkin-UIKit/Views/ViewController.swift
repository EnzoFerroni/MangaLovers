//
//  ViewController.swift
//  Checkin-UIKit
//
//  Created by Lucca Pivoto on 23/04/26.
//

import UIKit

class ViewController: UIViewController {
    
    
    let perfilLabel: UILabel = {
        let textLabel = UILabel()
        textLabel.textAlignment = .center
        textLabel.font = UIFont(name: "DrawClose", size: 124)
        textLabel.text = "SEU PERFIL"
        textLabel.textColor = UIColor.black
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        return textLabel
        
    }()
    
    let verticalStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        stack.axis = .vertical
        stack.spacing = 16
        return stack
    }()
    
    let horizontalStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        stack.axis = .horizontal
        stack.spacing = 71
        return stack
    }()
    
    let labelCPF: UILabel = {
        let textLabel = UILabel()
        textLabel.textAlignment = .center
        textLabel.text = "CPF"
        textLabel.textColor = UIColor.black
        textLabel.font = UIFont.systemFont(ofSize: 47.0, weight: .light, width: .compressed)
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        return textLabel
    }()
    
    let labelNascimento: UILabel = {
        let textLabel = UILabel()
        textLabel.textAlignment = .center
        textLabel.text = "Data Nascimento"
        textLabel.textColor = UIColor.black
        textLabel.font = UIFont.systemFont(ofSize: 47.0, weight: .light, width: .compressed)
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        return textLabel
    }()
    
    
    let labelAdress: UILabel = {
        let textLabel = UILabel()
        textLabel.textAlignment = .center
        textLabel.text = "Endereço"
        textLabel.textColor = UIColor.black
        textLabel.font = UIFont.systemFont(ofSize: 47.0, weight: .light, width: .compressed)
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        return textLabel
    }()
    
    let cpfSquare = LabelComponent(frame: .zero, text: "514.986.898")
    let cpfComplement = LabelComplement(frame: .zero, text: "63")
    let daySquare = DateView(frame: .zero, numberString: "16", textString: "DIA")
    let monthSquare = DateView(frame: .zero, numberString: "03", textString: "MÊS")
    let yearSquare = DateView(frame: .zero, numberString: "04", textString: "ANO")

    let streetSquare = LabelComponent(frame: .zero, text: "R dos pinheiros")
    let numberSquare = DateView(frame: .zero, numberString: "04", textString: "Nº")
    
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupPerfil()
        setupCPF()
        setupNascimento()
        setupEndereco()
        setupCarpas()
        setupArrow()
    }
    
    
    func setupPerfil(){
        
        view.addSubview(perfilLabel)
        
        NSLayoutConstraint.activate([
            //perfil
            perfilLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 84),
            perfilLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 120)
            
            ])
        
    }
    
    
    
    func setupCPF(){

        view.addSubview(cpfSquare)
        view.addSubview(labelCPF)
        view.addSubview(cpfComplement)
        
        
        cpfSquare.translatesAutoresizingMaskIntoConstraints = false
        cpfComplement.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
//
            labelCPF.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 118),
            labelCPF.topAnchor.constraint(equalTo: perfilLabel.bottomAnchor, constant: 33),
                   
            
            cpfSquare.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 91),
//            cpfSquare.trailingAnchor.constraint(equalTo: cpfComplement.leadingAnchor, constant: -14),
            cpfSquare.topAnchor.constraint(equalTo: labelCPF.bottomAnchor, constant: 11),
            

            cpfComplement.topAnchor.constraint(equalTo: cpfSquare.topAnchor),
//            cpfComplement.leadingAnchor.constraint(equalTo: cpfSquare.trailingAnchor, constant: 14),
            cpfComplement.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -72)
            
        ])
    }
    
    func setupNascimento(){
        
        view.addSubview(labelNascimento)
        view.addSubview(daySquare)
        view.addSubview(monthSquare)
        view.addSubview(yearSquare)
        
        daySquare.translatesAutoresizingMaskIntoConstraints = false
        monthSquare.translatesAutoresizingMaskIntoConstraints = false
        yearSquare.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            labelNascimento.leadingAnchor.constraint(equalTo: labelCPF.leadingAnchor),
            labelNascimento.topAnchor.constraint(equalTo: cpfSquare.bottomAnchor, constant: 17),
            
            daySquare.leadingAnchor.constraint(equalTo: cpfSquare.leadingAnchor),
            daySquare.topAnchor.constraint(equalTo: labelNascimento.bottomAnchor, constant: 12),
            
            monthSquare.leadingAnchor.constraint(equalTo: daySquare.trailingAnchor, constant: 54),
            monthSquare.topAnchor.constraint(equalTo: labelNascimento.bottomAnchor, constant: 12),
            
            yearSquare.leadingAnchor.constraint(equalTo: monthSquare.trailingAnchor, constant: 54),
            yearSquare.topAnchor.constraint(equalTo: labelNascimento.bottomAnchor, constant: 12),
            
            ])
    }
    
    func setupEndereco(){
        view.addSubview(labelAdress)
        view.addSubview(streetSquare)
        view.addSubview(numberSquare)
  
        
        streetSquare.translatesAutoresizingMaskIntoConstraints = false
        numberSquare.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            labelAdress.leadingAnchor.constraint(equalTo: labelCPF.leadingAnchor),
            labelAdress.topAnchor.constraint(equalTo: daySquare.bottomAnchor, constant: 17),
            
            streetSquare.leadingAnchor.constraint(equalTo: daySquare.leadingAnchor),
            streetSquare.topAnchor.constraint(equalTo: labelAdress.bottomAnchor, constant: 12),
            
            numberSquare.leadingAnchor.constraint(equalTo: yearSquare.leadingAnchor),
            numberSquare.topAnchor.constraint(equalTo: labelAdress.bottomAnchor, constant: 12),
            
         
            
            ])
    }
    
    
    func setupCarpas(){
        let imageView = UIImageView(image: UIImage(named: "carpas"))
        imageView.contentMode = .scaleAspectFill
      
        view.addSubview(imageView)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageView.topAnchor.constraint(equalTo: streetSquare.bottomAnchor, constant: -140)
        ])
    }
    
    func setupArrow(){
        let imageView = UIImageView(image: UIImage(named: "seta"))
        imageView.contentMode = .scaleAspectFill
        view.addSubview(imageView)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: view.trailingAnchor, constant: -200),
            imageView.topAnchor.constraint(equalTo: streetSquare.bottomAnchor, constant: 120)
        ])
        
    }
    

}




#Preview{
    let vc = ViewController()
    vc
}
