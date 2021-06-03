//
//  GunungRow.swift
//  Gunung
//
//  Created by Apple on 09/04/21.
//

import SwiftUI

import SwiftUI

struct GunungRow: View {
  var gunung: Gunung

  var body: some View {
    HStack{
      Image(gunung.gunungPhoto)
      .resizable()
        .aspectRatio(contentMode: .fill)
      .frame(width: 80, height: 80)
        .clipShape(Circle())
      
      VStack(alignment: .leading){
        Text(gunung.gunungName)
          .font(.system(size: 20))
          .bold()
          .foregroundColor(.black)
        Text(gunung.gunungLocation)
          .font(.system(size: 15))
          .foregroundColor(.black)
        
      }.padding(.leading, 3)
    }.padding(EdgeInsets(top: 8, leading: 0, bottom: 8, trailing: 195))
    
  }
}

struct gunungRow_Previews: PreviewProvider {
    static var previews: some View {
      GunungRow(gunung: gunung[1]).previewLayout(.fixed(width: 400, height: 100))
    }
}
