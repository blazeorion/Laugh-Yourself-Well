//
//  Laugh_Yourself_WellApp.swift
//  Laugh Yourself Well
//
//  Created by Blaze Dowis on 6/20/23.
//

import SwiftUI
import Firebase
@main
struct Laugh_Yourself_WellApp: App {
    @StateObject var viewModel = AuthViewModel()
    
    init() {
            FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
