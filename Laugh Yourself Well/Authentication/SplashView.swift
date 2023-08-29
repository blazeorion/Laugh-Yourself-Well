//
//  SplashView.swift
//  Laugh Yourself Well
//
//  Created by Blaze Dowis on 7/1/23.
//

import SwiftUI

struct SplashView: View {
    
    var body: some View {
            NavigationStack {
                VStack {
                    ZStack {
                        VStack{
                            Image("circles").resizable()
                                .aspectRatio(contentMode: .fit)
                            Spacer()
                            
                        }
                        VStack{
                            Text("LAUGH YOURSELF WELL!")
                                .bold()
                                .font(.largeTitle)
                                .foregroundColor(.accentColor)
                                .frame(width: 200)
                                .multilineTextAlignment(.center)
                            
                            Text("Body, Soul, & Spirit").foregroundColor(.accentColor)
                                .bold()
                        
                        }
                        VStack{
                            Spacer()
                            NavigationLink {
                                LoginFirebaseView()
                            } label: {
                                Text("Sign In")
                            }.padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.accentColor)
                                .clipShape(Capsule())
                                .foregroundColor(.white).bold()
                            
                            NavigationLink {
                                RegisterView()
                            } label: {
                                Text("Create Account")
                            }
                            
                        }
                    }.padding()
                    
                }
            }
        }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
