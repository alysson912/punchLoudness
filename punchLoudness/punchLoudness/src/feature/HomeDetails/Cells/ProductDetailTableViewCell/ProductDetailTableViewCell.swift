//
//  ProductDetailTableViewCell.swift
//  punchLoudness
//
//  Created by Alysson on 31/08/23.
//

import UIKit

class ProductDetailTableViewCell: UITableViewCell {
    
    static let identifier: String = String(describing: ProductDetailTableViewCell.self)

    private lazy var screen: ProductDetailTableViewCellScreen = {
        let view = ProductDetailTableViewCellScreen()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private  func configScreen(){
        contentView.addSubview(screen)
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        screen.configCollectionView(delegate: self, dataSource: self)
        configScreen()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupConstraints(){
        screen.pin(to: self)
        NSLayoutConstraint.activate([
        ])
    }
}
extension ProductDetailTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return  5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CardCollectionViewCell.identifier, for: indexPath) as? CardCollectionViewCell
        
        return cell ?? UICollectionViewCell()
    }
    
}
