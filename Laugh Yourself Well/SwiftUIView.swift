//
//  SwiftUIView.swift
//  Laugh Yourself Well
//
//  Created by Blaze Dowis on 6/28/23.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        NavigationStack{
            VStack{
                NavigationLink {
                    HomeView()
                } label: {
                    Text("hello")
                }
                
                List {
                    NavigationLink("Mint", value: Color.mint)
                    NavigationLink("Pink", value: Color.pink)
                    NavigationLink("Teal", value: Color.teal)
                }
                .navigationDestination(for: Color.self) { color in
                    Text("test")
                }
                .navigationTitle("Colors")

            }
        }
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
