//
//  InputView.swift
//  Laugh Yourself Well
//
//  Created by Blaze Dowis on 7/1/23.
//

import SwiftUI

struct InputView: View {
    @Binding var text: String
    let placeholder: String
    var isSecureField = false
    var showPassword = false
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            
            if(isSecureField){
                if(showPassword){
                    TextField(placeholder,
                                text: $text,
                                prompt: Text(placeholder).foregroundColor(.black))
                    .padding(10)
                    .overlay {
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(.black, lineWidth: 2)
                    }
                }else{
                    SecureField(placeholder,
                                text: $text,
                                prompt: Text(placeholder).foregroundColor(.black))
                    .padding(10)
                    .overlay {
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(.black, lineWidth: 2)
                    }
                }
                
            }else{
               
                TextField(placeholder,
                          text: $text ,
                          prompt: Text(placeholder).foregroundColor(.black)
                )
                .padding(10)
                .overlay {
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(.black, lineWidth: 2)
                }
                
            }
            
        }
    }
}

struct InputView_Previews: PreviewProvider {
    static var previews: some View {
        InputView(text: .constant(""), placeholder: "Password",isSecureField: true)
    }
}
