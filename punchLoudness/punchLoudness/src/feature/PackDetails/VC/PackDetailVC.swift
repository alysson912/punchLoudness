//
//  PackDetailVC.swift
//  punchLoudness
//
//  Created by Alysson on 04/09/23.
//

import UIKit

enum NameCellNftDetail: Int {
    case nftImage = 0
    case productDescription = 1
    case lastestDeal = 2
}

class PackDetailVC: UIViewController {
    
    let viewModel: PackDetailViewModel
    private var screen : PackDetailScreen?
    
    
    override func loadView() {
        screen = PackDetailScreen()
        view = screen
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    required init(products: ListProduct) {
        viewModel = PackDetailViewModel(listProducts: products)
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.configTableViewProtocols(delegate: self, dataSource: self)
        screen?.delegate(delegate: self)
    }
    
    
}
extension PackDetailVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch NameCellNftDetail(rawValue: indexPath.row) {
            
        case .nftImage:
            let cell = tableView.dequeueReusableCell(withIdentifier: PackImageExpandDetailTableViewCell.identifier, for: indexPath) as?
            PackImageExpandDetailTableViewCell
            cell?.setupCellPackDetail( image: viewModel.productImage)
            return  cell ??  UITableViewCell()
            
        case .productDescription:
            let cell = tableView.dequeueReusableCell(withIdentifier: PackDetailExpandDetailTableViewCell.identifier, for: indexPath) as?
            PackDetailExpandDetailTableViewCell
          //  cell?.setupCell(id: viewModel.idNft, title: viewModel.titleNft, description: viewModel.nftDescription)
            return  cell ??  UITableViewCell()
            
        default:
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return  viewModel.heightForRowAt(indexPath: indexPath, width: view.frame.width)
    }
}
extension PackDetailVC: PackDetailScreenDelegate {
    func tappedBackButton() {
        dismiss(animated: true)
    }
    

}
