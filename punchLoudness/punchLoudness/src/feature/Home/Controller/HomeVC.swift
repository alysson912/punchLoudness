//
//  ViewController.swift
//  punchLoudness
//
//  Created by Alysson on 23/08/23.
//

import UIKit

class HomeVC: UIViewController {

    private var screen: HomeScreen?
    private var viewModel = HomeViewModel()
    
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    override func loadView() {
        screen = HomeScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.configCollectionView(delegate: self, dataSource: self)
        screen?.configTableView(delegate: self, dataSource: self)
        viewModel.fetchRequest(.mock)
    }


}

extension HomeVC: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HomeFilterCollectionViewCell.identifier, for: indexPath) as? HomeFilterCollectionViewCell
        
        //MARK: SETUP COLLECTIONVIEW
        
        return cell ?? UICollectionViewCell()
    }
    
    
}

extension HomeVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: HomeBodyTableViewCell.identifier, for: indexPath) as? HomeBodyTableViewCell
        
        //MARK: SETUP TABLEVIEW
        
        cell?.setupCell(data: viewModel.loadCurrentNft(indexPath: indexPath))
        
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return viewModel.heightForRowAt
    }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        <#code#>
//    }
}
