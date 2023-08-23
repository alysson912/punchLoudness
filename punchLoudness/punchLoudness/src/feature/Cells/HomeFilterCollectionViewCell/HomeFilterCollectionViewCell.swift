//
//  NftFilterCollectionViewCell.swift
//  appNFT
//
//  Created by ALYSSON DODO on 22/04/23.
//

import UIKit

class HomeFilterCollectionViewCell: UICollectionViewCell {
    
    
    static let identifier: String = String(describing: HomeFilterCollectionViewCell.self) // transforma o  que tiver aqui em string
    
    private lazy var screen: HomeFilterCollectionViewCellScreen = {
        let view = HomeFilterCollectionViewCellScreen()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private  func addViews(){
        contentView.addSubview(screen)
    }
    
    
   private func configConstraints(){
       screen.pin(to: self)
        NSLayoutConstraint.activate([
            
        ])
    }
    
//    public func setupCell(filter: FilterNft){
//        screen.filterLabel.text = filter.title ?? ""
//        if filter.isSelected ?? false {
//            screen.filterLabel.backgroundColor = UIColor(red: 0/255, green: 255/255, blue: 255/255, alpha: 0.9)
//        }else {
//            screen.filterLabel.backgroundColor =  UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.6)
//            
//        }
//    }
    
}
