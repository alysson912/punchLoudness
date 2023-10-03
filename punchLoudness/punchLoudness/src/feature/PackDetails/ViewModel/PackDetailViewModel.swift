//
//  PackDetailViewModel.swift
//  punchLoudness
//
//  Created by Alysson on 28/09/23.
//
import Foundation
import UIKit



class PackDetailViewModel {
    
    private let listProducts: ListProduct
    
    init(listProducts: ListProduct) {
        self.listProducts = listProducts
    }
    
    public var numberOfRowsInSection: Int {
        return 2
    }
    
    public var idProduct: Int {
        return Int(listProducts.id ?? "") ?? 0
    }
    
    public var titleProduct: String {
        return listProducts.title ?? ""
    }
    
    public var productImage: String {
        return listProducts.image ?? ""
    }
    
    public var productDescription: String {
        return listProducts.description ?? ""
    }
    
    public var producBrand: String {
        return listProducts.brand ?? ""
    }
    
    public var productModel: String {
        return listProducts.model ?? ""
    }
    
//    public var getProduct: ListProduct {
//        return getProduct
//    }
    
    public func heightForRowAt (indexPath: IndexPath, width: CGFloat) -> CGFloat{
        switch NameCellNftDetail(rawValue: indexPath.row) {
            
        case .nftImage:
            return 250
        case .productDescription:
            return 800
        default:
            return 0
        }
    }
}
