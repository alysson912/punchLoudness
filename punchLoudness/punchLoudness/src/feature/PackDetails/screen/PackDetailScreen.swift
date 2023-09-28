//
//  PackDetail.swift
//  punchLoudness
//
//  Created by Alysson on 04/09/23.
//

import UIKit

protocol PackDetailScreenDelegate: AnyObject {
    func tappedBackButton()
}

class PackDetailScreen: UIView {
    
    private weak var delegate: PackDetailScreenDelegate?
    
    public func delegate(delegate: PackDetailScreenDelegate?){
        self.delegate = delegate
    }
    
    lazy var backButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setImage(UIImage(systemName: "chevron.backward"), for: .normal)
        btn.addTarget(self, action: #selector(tappedBackButton), for: .touchUpInside)
        return btn
    }()
    
    @objc func tappedBackButton(){
        delegate?.tappedBackButton()
    }
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none // retirando linhas
        tableView.showsVerticalScrollIndicator = false
        // TO DO: Register Image + Description +
        tableView.register(PackImageExpandDetailTableViewCell.self, forCellReuseIdentifier: PackImageExpandDetailTableViewCell.identifier)
        tableView.backgroundColor =  UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1.0)
        
        return tableView
    }()
    
    // config protocols
   public func configTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource){
        tableView.delegate = delegate
        tableView.dataSource = dataSource
    }
    private func addView(){
        addSubview(backButton)
        addSubview(tableView)
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        
        addView()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configConstraints(){
        
    
        NSLayoutConstraint.activate([
            
            backButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 0),
            backButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            backButton.heightAnchor.constraint(equalToConstant: 56),
            backButton.widthAnchor.constraint(equalToConstant: 56),
            
            tableView.topAnchor.constraint(equalTo: backButton.bottomAnchor, constant: 0),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
