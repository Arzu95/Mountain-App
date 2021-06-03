//
//  GunungList.swift
//  Gunung
//
//  Created by Apple on 09/04/21.
//

import SwiftUI

struct GunungList: View {
  var body: some View {
    NavigationView{
      List(gunung){ gunung in
        NavigationLink(destination: GunungDetail(gunung: gunung)) {
          HStack{
            Image(gunung.gunungPhoto)
              .resizable()
              .frame(width: 48, height: 48)
              .clipShape(Circle())
              .overlay(Circle().stroke(Color.black, lineWidth: 2)).padding(.trailing, 16)
            
            VStack(alignment: .leading) {
              Text(gunung.gunungName).font(.system(size: 20)).bold()
              Text(gunung.gunungLocation).font(.system(size: 15))
            }
          }.padding()
        }
      }.navigationBarTitle(Text("Daftar Gunung"))
    }
  }
}

struct GunungList_Previews: PreviewProvider {
    static var previews: some View {
        GunungList()
    }
}
