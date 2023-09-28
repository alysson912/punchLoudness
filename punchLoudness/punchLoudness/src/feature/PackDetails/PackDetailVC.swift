//
//  PackDetailVC.swift
//  punchLoudness
//
//  Created by Alysson on 04/09/23.
//

import UIKit

class PackDetailVC: UIViewController {
    
    static let identifier: String = String(describing: PackDetailVC.self)

    private var screen: PackDetailScreen?
    
    override func loadView() {
        screen = PackDetailScreen()
        view = screen
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        screen?.delegate(delegate: self)
        screen?.configTableViewProtocols(delegate: self, dataSource: self)
        
    }
    

}
extension PackDetailVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    let cell = tableView.dequeueReusableCell(withIdentifier: PackImageExpandDetailTableViewCell.identifier, for: indexPath) as? PackImageExpandDetailTableViewCell

        return cell ?? UITableViewCell()
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 1500
    }
    
}


extension PackDetailVC: PackDetailScreenDelegate {
    func tappedBackButton() {
        dismiss(animated: true)
    }
    
    
}
    

