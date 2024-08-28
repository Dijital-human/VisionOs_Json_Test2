//
//  WebService.swift
//  Json_Api_Second
//
//  Created by Famil Mustafayev on 16.06.24.
//

import Foundation

class WebService: Codable, ServiceProtocol{
    
    func downloadData < T: Codable > (fromUrl: String) async -> T? {
        do{
            guard let url = URL(string: fromUrl) else { throw NetworkErrorManager.badUrl }
            let (data, response) = try! await URLSession.shared.data(from: url)
            guard let response = response as? HTTPURLResponse else { throw NetworkErrorManager.badResponse }
            guard response.statusCode > 199 && response.statusCode < 300 else{ throw NetworkErrorManager.badResponse}
            guard let decodeData = try? JSONDecoder().decode(T.self, from: data) else { throw NetworkErrorManager.badData }
            
            return decodeData
        }catch NetworkErrorManager.badUrl{
            print("Bad Url")
        }catch NetworkErrorManager.badResponse{
            print("Bad Response")
        }catch{
            print("Bad Data Data Uygun deyil")
        }
        return nil
    }
}
