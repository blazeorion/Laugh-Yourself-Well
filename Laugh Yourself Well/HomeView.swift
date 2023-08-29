//
//  HomeView.swift
//  Laugh Yourself Well
//
//  Created by Blaze Dowis on 6/25/23.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var viewModel : AuthViewModel
    var body: some View {
        if let user = viewModel.currentUser{
            
            Text("Hello \(user.fullname )!").font(.largeTitle).foregroundColor(.accentColor).bold()
            
            Button {
                viewModel.signOut()
            } label: {
                Text("log out")
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    //static let myAuthViewModel = AuthViewModel().fetchUser()

    static var previews: some View {
        HomeView().environmentObject(AuthViewModel())
    }
}
