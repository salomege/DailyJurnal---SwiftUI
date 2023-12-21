//
//  Daily_Journal_AppApp.swift
//  Daily_Journal_App
//
//  Created by salome on 20.12.23.
//

import SwiftUI

@main
struct Daily_Journal_AppApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
            .environmentObject(listViewModel)
        }
    }
}
