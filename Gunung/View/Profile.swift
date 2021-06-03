//
//  Profile.swift
//  Gunung
//
//  Created by Apple on 09/04/21.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        VStack{
            Image("Foto1")
                .resizable()
                .frame(width: 150.0, height: 150.0)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
            Text("Muhammad Arzu Kirana Berutu").font(.title)
            Text("muhammadarzu343@gmail.com")
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
