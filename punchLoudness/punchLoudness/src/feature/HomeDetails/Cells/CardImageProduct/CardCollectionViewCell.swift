//
//  CardCollectionViewCell.swift
//  punchLoudness
//
//  Created by Alysson on 31/08/23.
//

import UIKit

class CardCollectionViewCell: UICollectionViewCell {
    
    static let identifier: String = String(describing: CardCollectionViewCell.self)
    
    private lazy var screen: CardCollectionViewCellScreen = {
        let view = CardCollectionViewCellScreen()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    private  func addViews(){
        contentView.addSubview(screen)
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
        screen.pin(to: self)
         NSLayoutConstraint.activate([
         ])
     }
     
}
