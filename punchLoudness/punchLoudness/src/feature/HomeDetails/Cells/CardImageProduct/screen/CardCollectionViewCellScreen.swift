//
//  CardCollectionViewCellScreen.swift
//  punchLoudness
//
//  Created by Alysson on 31/08/23.
//

import UIKit

class CardCollectionViewCellScreen: UIView {
    
    
    lazy var imageView : UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage( named: "GSL" )
        image.contentMode = .scaleAspectFit
        image.backgroundColor = .red
        return image
    }()
    
    private  func addViews(){
        addSubview(imageView)
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configConstraints(){
       
        imageView.pin(to: self)
         NSLayoutConstraint.activate([
            
            
         ])
     }
}
