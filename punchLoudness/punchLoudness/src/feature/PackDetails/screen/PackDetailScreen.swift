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
        btn.backgroundColor = .clear
        btn.clipsToBounds = true
        btn.layer.cornerRadius =  15 //25.5
        btn.layer.shadowRadius = 10
        btn.layer.shadowOffset = CGSize(width: 0, height: 5)
        btn.layer.shadowOpacity = 0.3
        btn.setImage(UIImage(systemName: "chevron.backward"), for: .normal)
        btn.tintColor = .blue
        btn.isEnabled = true
        btn.transform = .init(scaleX: 0.8, y: 0.8)// nasce com tamanho menor depois aumenta
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
        tableView.backgroundColor = UIColor(red: 26/255, green: 26/255, blue: 1/255, alpha: 1.0)
        // TO DO: Register
        tableView.register(PackImageExpandDetailTableViewCell.self, forCellReuseIdentifier: PackImageExpandDetailTableViewCell.identifier)
        tableView.register(PackDetailExpandDetailTableViewCell.self, forCellReuseIdentifier: PackDetailExpandDetailTableViewCell.identifier)
        
      //  tableView.register(LastestDealTableViewCell.self, forCellReuseIdentifier: LastestDealTableViewCell.identifier)
        
        //tableView.backgroundColor =  UIColor(red: 26/255, green: 26/255, blue: 1/255, alpha: 1.0)
        return tableView
    }()
    
 

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor(red: 26/255, green: 26/255, blue: 1/255, alpha: 1.0)
        addView()
        configConstraints()
    }
    
    private func addView(){
        addSubview(backButton)
        addSubview(tableView)
    }
    
    // config protocols
   public func configTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource){
        tableView.delegate = delegate
        tableView.dataSource = dataSource
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configConstraints(){
        
        NSLayoutConstraint.activate([
            
            backButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            backButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            backButton.heightAnchor.constraint(equalToConstant: 45),
            backButton.widthAnchor.constraint(equalToConstant: 45),
            
            tableView.topAnchor.constraint(equalTo: backButton.bottomAnchor, constant: 0),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            
            
            
        ])
    }
}
