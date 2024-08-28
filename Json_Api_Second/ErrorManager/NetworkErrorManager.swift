//
//  NetworkErrorManager.swift
//  Json_Api_Second
//
//  Created by Famil Mustafayev on 16.06.24.
//

import Foundation
enum NetworkErrorManager: Error{
    case badUrl
    case badResponse
    case badData
}
