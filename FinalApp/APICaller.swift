//
//  APICaller.swift
//  FinalApp
//
//  Created by Kentan on 7/31/21.
//

import Foundation

final class APICaller {
    static let shared = APICaller()
    
    private struct Constants {
        static let apiKey = "E591087E-1101-42FE-8D8F-0EBA112E9078"
        static let assetEndpoint = "https://rest.coinapi.io/v1/assets"
        }
    
    private init() {}
    
    public func getCryptoData(
        completion: @escaping (Result<[Crypto], Error>) -> Void
    ) {
        guard let url = URL(string: Constants.assetEndpoint + "?apikey=" + Constants.apiKey) else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) {data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do{
                //Decode response
                let cryptos = try JSONDecoder().decode([Crypto].self, from: data)
                
                completion(.success(cryptos))
            }
            catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }
    
    
    
}

