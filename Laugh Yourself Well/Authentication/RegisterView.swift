//
//  RegisterView.swift
//  Laugh Yourself Well
//
//  Created by Blaze Dowis on 6/20/23.
//

import SwiftUI
import Firebase
struct RegisterView: View {
    
    @State private var fullname = ""
    @State var email = ""
    @State var password = ""
    @State var reEnterPassword = ""
    @State var showPassword: Bool = false
    @State var showReEnterPassword: Bool = false
    
    @EnvironmentObject var viewModel: AuthViewModel
    
    
    var body: some View {
        NavigationStack {
            VStack {
                ZStack {
                    
                    VStack(spacing: 15){
                        
                        //icon
                        Image("circles").resizable()
                            .aspectRatio(contentMode: .fit)
                        Spacer()
                        
                        //title
                        Text("Create Account!")
                            .bold()
                            .font(.largeTitle)
                            .foregroundColor(.accentColor)
                            .frame(width: 200)
                            .multilineTextAlignment(.center)
                        Spacer()
                        
                        //text fields
                        InputView(text: $fullname, placeholder: "Full Name")
                        
                        InputView(text: $email, placeholder: "Email").autocapitalization(.none)
                        
                        HStack {
                            InputView(text: $password, placeholder: "Password", isSecureField: true, showPassword: showPassword)
                            Button {
                                showPassword.toggle()
                            } label: {
                                Image(systemName: showPassword ? "eye.slash" : "eye")
                                    .foregroundColor(.black)
                            }
                        }
                        
                        HStack {
                            InputView(text: $reEnterPassword, placeholder: "Re-enter Password", isSecureField: true, showPassword: showReEnterPassword)
                            Button {
                                showReEnterPassword.toggle()
                            } label: {
                                Image(systemName: showReEnterPassword ? "eye.slash" : "eye")
                                    .foregroundColor(.black)
                            }
                        }
                        
                        Spacer()
                        
                        //create button
                        Button {
                            Task{
                                try await viewModel.createUser(withEmail: email,password:password,fullname:fullname)
                            }
                        } label: {
                            Text("Create")
                                .font(.title2)
                                .bold()
                                .foregroundColor(.white)
                        }
                        .frame(height: 50)
                        .frame(maxWidth: .infinity)
                        .background(Color("AccentColor"))
                        .cornerRadius(15)
                        .disabled(!formIsValid)
                        .opacity(formIsValid ? 1.0 : 0.5)
                        
                    }
                   
                }.padding()
            }
        }
    }
}
// MARK: - AuthenticationFormProtocol

extension RegisterView: AuthenticationFormProtocol{
    var formIsValid: Bool{
        return !email.isEmpty
        && email.contains("@")
        && !password.isEmpty
        && password.count > 5
        && reEnterPassword == password
        && !fullname.isEmpty
        
    }
}
struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
