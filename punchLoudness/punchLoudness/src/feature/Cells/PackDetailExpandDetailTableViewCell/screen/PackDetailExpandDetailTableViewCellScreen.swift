//
//  PackDetailExpandDetailTableViewCellScreen.swift
//  punchLoudness
//
//  Created by Alysson on 03/10/23.
//

import UIKit

class PackDetailExpandDetailTableViewCellScreen: UIView {
    
    lazy var genericLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Description"
        label.textColor =  UIColor(red: 26/255, green: 26/255, blue: 1/255, alpha: 1.0)
        label.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        return label
    }()

    private func addViews(){
        addSubview(genericLabel)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .yellow
        addViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func setupConstraints(){
        NSLayoutConstraint.activate( [
            genericLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            genericLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            
        ])
    }
}
