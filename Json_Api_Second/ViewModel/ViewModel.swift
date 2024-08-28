//
//  ViewModel.swift
//  Json_Api_Second
//
//  Created by Famil Mustafayev on 16.06.24.
//

import Foundation

@MainActor class ViewModel: ObservableObject{
    @Published var model = [Model]()
    
    func fetchData() async {
        guard let modelData:[Model] = await WebService().downloadData(fromUrl: "http://data.fixer.io/api/latest?access_key=3740e9d9467efb5b50d6eef1816da87f") else { return }
        model = modelData
    }
}
