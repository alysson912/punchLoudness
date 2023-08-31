//
//  HomeService.swift
//  punchLoudness
//
//  Created by Alysson on 29/08/23.
//

import UIKit

protocol HomeServiceDelegate: GenericService {
    func getHomeFromJson(completion: @escaping completion<HomeData?>)
   // func getHome(completion: @escaping completion<NFTData?>)
}

class HomeService {
    func getHomeFromJson(completion: @escaping (HomeData?, Error?) -> Void){
        if let url = Bundle.main.url(forResource: "HomeData", withExtension: "json"){ // buscando o local do data
            
            do {
                 let data = try Data(contentsOf: url) // passando a rota do json, transforma o json em binario para depois trasformar em um objeto
                let homeData: HomeData = try JSONDecoder().decode(HomeData.self, from: data)
                completion(homeData, nil)
                
            } catch  {
                completion(nil, Error.fileDecodingFailed(name: "HomeData", error))
            }
        } else {
            completion(nil, Error.fileNoFound(name: "HomeData"))
        }
    }
}
