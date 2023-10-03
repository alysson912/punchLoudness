//
//  HomeViewModel.swift
//  punchLoudness
//
//  Created by Alysson on 29/08/23.
//

import UIKit

protocol HomeViewModelDelegate: AnyObject {
    func sucess()
    func error()
}

class HomeViewModel{

    private var service = HomeService()
    private var data: HomeDataModel?
    
    
    weak private var delegate: HomeViewModelDelegate?
    
    public func delegate( delegate: HomeViewModelDelegate?) {
        self.delegate = delegate
    }
    
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
    
    public func loadCurrentNft(indexPath: IndexPath) -> ListProduct {
        return data?.listProducts?[indexPath.row] ?? ListProduct()
    }

    public var numberOfRowsInSection: Int {
        return data?.listProducts?.count ?? 0
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
