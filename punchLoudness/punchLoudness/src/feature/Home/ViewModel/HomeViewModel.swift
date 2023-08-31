//
//  HomeViewModel.swift
//  punchLoudness
//
//  Created by Alysson on 29/08/23.
//

import UIKit

protocol  HomeViewModelDelegate: AnyObject {
    func sucess()
    func error()
}

class HomeViewModel{

    private var service = HomeService()
    private var data: HomeData?
    
    
    weak private var delegate: HomeViewModelDelegate?
    
    public func fetchRequest(_ typeFetch: TypeFetch) {
        
        switch typeFetch {
        case .mock:
            service.getHomeFromJson { result, faiule in
                if let result {
                    self.data = result
                    self.delegate?.sucess()
                }else {
                    self.delegate?.error()
                }
            }
        }
    }
    
    public func loadCurrentNft(indexPath: IndexPath) -> Product {
        return data?.products?[indexPath.row] ?? Product()
    }

    public var numberOfRowsInSection: Int {
        return 3
    }
    public var heightForRowAt: CGFloat {
        return 360
    }
    
    
//    public func sizeForItemAt(indexPath: IndexPath, frame: CGRect) -> CGSize {
//        if indexPath.row == 0 {
//            return  CGSize(width: 120, height: frame.height)// se primeira cell tenha 120 mantenha essa proporção
//        }else{
//            return CGSize(width: frame.width - 120, height: frame.height) // caso contrario pegue a largura e diminua 120
//        }
//    }
}
