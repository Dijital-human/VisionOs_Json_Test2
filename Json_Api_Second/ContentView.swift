//
//  ContentView.swift
//  Json_Api_Second
//
//  Created by Famil Mustafayev on 16.06.24.
//

import SwiftUI
struct ContentView: View {
    @StateObject var vm = ViewModel()
    var body: some View {
        NavigationSplitView {
            List{
                ForEach(vm.model){item in
                    NavigationLink {
                        Text(item.base)
                    } label: {
                        Text(item.base)

                    }

                        
                    
                }
            }.onAppear(){
                if vm.model.isEmpty{
                    Task{
                        await vm.fetchData()
                    }
                }
            }
            .navigationTitle("Model")
        } detail: {
            
        }

    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
