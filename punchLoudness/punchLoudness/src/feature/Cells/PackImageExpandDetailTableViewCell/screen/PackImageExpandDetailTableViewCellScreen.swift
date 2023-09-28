//
//  PackDetailTableViewCellScreen.swift
//  punchLoudness
//
//  Created by Alysson on 04/09/23.
//

import UIKit

class PackImageExpandDetailTableViewCellScreen: UIView {
    


    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        return label
    }()
    
    lazy var productDetailImageView : UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        //image.image = UIImage( named: "GSL" )
        image.contentMode = .scaleAspectFill
        //image.backgroundColor = .red
    
        
        return image
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .clear
        addSubview(titleLabel)
        addSubview(productDetailImageView)
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupConstraints(){
        NSLayoutConstraint.activate([
            
            
            titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            productDetailImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 15),
            productDetailImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            productDetailImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            productDetailImageView.heightAnchor.constraint(equalToConstant: 350)
        ])
    }
    
}
