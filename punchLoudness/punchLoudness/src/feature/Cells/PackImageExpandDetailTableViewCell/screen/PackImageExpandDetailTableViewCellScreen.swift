//
//  PackDetailTableViewCellScreen.swift
//  punchLoudness
//
//  Created by Alysson on 04/09/23.
//

import UIKit

class PackImageExpandDetailTableViewCellScreen: UIView {
    
    lazy var productDetailImageView : UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        //image.image = UIImage( named: "GSL" )
        image.contentMode = .scaleAspectFit
        image.backgroundColor = .clear
        return image
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor(red: 26/255, green: 26/255, blue: 1/255, alpha: 1.0)
        addSubview(productDetailImageView)
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupConstraints(){
        productDetailImageView.pin(to: self)
        NSLayoutConstraint.activate([
        ])
    }
    
}
