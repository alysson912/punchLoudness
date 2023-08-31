//
//  NftTableViewCell.swift
//  appNFT
//
//  Created by ALYSSON DODO on 22/04/23.
//

import UIKit
//import AlamofireImage

class HomeBodyTableViewCell: UITableViewCell {
    
    static let identifier: String = String( describing: HomeBodyTableViewCell.self)
    
    private lazy var screen: HomeBodyTableViewCellScreen = {
        let view = HomeBodyTableViewCellScreen()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
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
   //  setup cells
    
    public func setupCell(data: Product) {
        //screen.imageView.image = UIImage(named: data.products. ?? "")
        screen.titleLabel.text = data.title
        screen.imageView.image = UIImage(named: data.image ?? "")
        screen.brandLabel.text = data.brand
        screen.modelLabel.text = data.model
        screen.descriptionLabel.text = data.description
        }
    
}
