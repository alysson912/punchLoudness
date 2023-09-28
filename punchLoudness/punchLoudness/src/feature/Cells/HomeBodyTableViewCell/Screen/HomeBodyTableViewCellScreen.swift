//
//  NftTableViewCell.swift
//  appNFT
//
//  Created by ALYSSON DODO on 22/04/23.
//

import UIKit



class HomeBodyTableViewCellScreen: UIView {
    
    lazy var viewBackground: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white//UIColor(red: 26/255, green: 26/255, blue: 1/255, alpha: 1)
        view.clipsToBounds = true
        view.layer.cornerRadius = 18
        return view
    }()
    
    lazy var imageView : UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleToFill
       //image.image = UIImage(named: "k1")
        image.backgroundColor = .clear
        return image
    }()
    
    lazy var lineViewSeparator: UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = .darkGray
        return v
    }()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Olá Mundo !"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 14)
        return label
    }()
    
    lazy var brandLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Marca !"
        label.textColor =  .black
        label.font = UIFont.systemFont(ofSize: 22, weight: .semibold)
        return label
    }()
    
    lazy var modelLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "SL-Series"
        label.textAlignment = .center
        label.numberOfLines = 1
        label.textColor =  UIColor(red: 69/255, green: 191/255, blue: 229/255, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        return label
    }()
    
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "descriçãodescriçãodescriçãodescriçãodescriçãodescriçãodescriçãodescriçãodescrição"
        label.numberOfLines = 0
        label.textColor =  .darkGray//UIColor(red: 69/255, green: 191/255, blue: 229/255, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        return label
    }()
    
    lazy var brandImageView : UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.layer.cornerRadius = 44
        image.tintColor = .black
       // image.image = UIImage(named: "k1")
        return image
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor(red: 26/255, green: 26/255, blue: 1/255, alpha: 1)
        addView()
        configConstraints()

    }
    
    
    func addView(){
        addSubview(viewBackground)
        viewBackground.addSubview(imageView)
        viewBackground.addSubview(titleLabel)
        viewBackground.addSubview(lineViewSeparator)
        viewBackground.addSubview(brandLabel)
        viewBackground.addSubview(modelLabel)
        viewBackground.addSubview(descriptionLabel)

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func configConstraints(){
        NSLayoutConstraint.activate([
            viewBackground.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            viewBackground.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            viewBackground.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            viewBackground.heightAnchor.constraint(equalToConstant: 340),
            
            imageView.topAnchor.constraint(equalTo: viewBackground.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 200),
            
            titleLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 10),
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            lineViewSeparator.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 5),
            lineViewSeparator.leadingAnchor.constraint(equalTo: leadingAnchor),
            lineViewSeparator.trailingAnchor.constraint(equalTo: trailingAnchor),
            lineViewSeparator.heightAnchor.constraint(equalToConstant: 2),
            
            brandLabel.topAnchor.constraint(equalTo: lineViewSeparator.bottomAnchor, constant: 10),
            brandLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 25),
            
            modelLabel.topAnchor.constraint(equalTo: brandLabel.topAnchor),
            modelLabel.leadingAnchor.constraint(equalTo: brandLabel.trailingAnchor, constant: 5),
            modelLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -55),
            
            descriptionLabel.topAnchor.constraint(equalTo: modelLabel.bottomAnchor, constant: 15),
            descriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 25),
            descriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -25),
            
        ])
    }
}
