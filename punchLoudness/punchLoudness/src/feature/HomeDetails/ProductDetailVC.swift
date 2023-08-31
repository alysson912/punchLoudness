//
//  ProductDetailVC.swift
//  punchLoudness
//
//  Created by Alysson on 31/08/23.
//

import UIKit

class ProductDetailVC: UIViewController {
    
    private var screen: ProductDetailScreen?
    
    override func loadView() {
        screen = ProductDetailScreen()
        view = screen
    }

    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.configTableView(delegate: self, dataSource: self)
    }
    
}
extension ProductDetailVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 240
    }
}
