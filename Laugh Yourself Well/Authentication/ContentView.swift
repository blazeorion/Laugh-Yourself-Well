//
//  ContentView.swift
//  Laugh Yourself Well
//
//  Created by Blaze Dowis on 6/20/23.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var viewModel: AuthViewModel
    var body: some View {
        Group{
            if viewModel.userSession != nil{
                HomeView()
            } else {
                SplashView()
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
