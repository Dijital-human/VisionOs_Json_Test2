//
//  Json_Api_SecondApp.swift
//  Json_Api_Second
//
//  Created by Famil Mustafayev on 16.06.24.
//

import SwiftUI

@main
struct Json_Api_SecondApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }
    }
}
