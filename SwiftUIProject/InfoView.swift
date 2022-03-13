//
//  InfoView.swift
//  SwiftUIProject
//
//  Created by Zhang Xu on 2022/3/12.
//

import SwiftUI

struct InfoView: View {
    let textValue : String
    let imageName : String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(.white)
            .frame(height: 50)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(.blue)
                Text(textValue)
            })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(textValue: " 134143214 431", imageName: "phone").previewLayout(.sizeThatFits)
    }
}
