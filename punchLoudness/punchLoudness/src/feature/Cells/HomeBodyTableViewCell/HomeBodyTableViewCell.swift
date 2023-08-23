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
    // setup cells
    
//    public func setupCell(data: Nft) {
//        if let urlNFT: URL = URL(string: data.nftImage ?? ""), let urlUser: URL = URL(string: data.userImage ?? "" ){
//
//            screen.nftImageView.af.setImage(withURL: urlNFT, placeholderImage: UIImage(named: "threeButtons"))
//            screen.nftImageView.backgroundColor = .white
//
//            screen.userImageView.af.setImage(withURL: urlUser, placeholderImage: UIImage(systemName: "person.circle.fill")?.withTintColor(.black))
//            screen.userImageView.backgroundColor = .white
//        }
//
//        screen.priceLabel.text = data.price ?? ""
//        screen.priceValueLabel.text = "\(data.nftPrice ?? 0.0) ETH"
//        screen.ownedByPriceLabel.text = data.ownedBy
//        screen.userLabel.text = data.userName
//    }
    
}
