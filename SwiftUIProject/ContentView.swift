//
//  ContentView.swift
//  SwiftUIProject
//
//  Created by Zhang Xu on 2022/3/12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 0.2, green: 0.3, blue: 0.5)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diamond")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 4)
                    )
                    .frame(width: 150.0, height: 150.0, alignment: .center)
                Text("Xu Zhang")
                    .font(.custom("Pacifico-Regular", size: 40))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                Divider()
                InfoView(textValue: "+1 1234567890", imageName: "phone.fill")
                InfoView(textValue: "xuzhangde@gmail.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

