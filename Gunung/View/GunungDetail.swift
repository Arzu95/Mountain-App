//
//  GunungDetail.swift
//  Gunung
//
//  Created by Apple on 09/04/21.
//

import SwiftUI

struct GunungDetail: View {
    var gunung: Gunung
    
    var body: some View{
            ScrollView{
                
                VStack{
                    
                    Spacer(minLength: 160)
                    Image(gunung.gunungPhoto)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 240, height: 240, alignment: .center)
                    Spacer(minLength: 10)
                    Text(gunung.gunungName)
                        .font(.system(size: 20, weight: .semibold))
                        .bold()
                        .foregroundColor(.black)
                    Spacer(minLength: 10)
                    Text(gunung.gunungHeight)
                        .font(.system(size: 16))
                        .foregroundColor(.black)
                    Spacer(minLength: 10)
                    Text(gunung.gunungType)
                        .font(.system(size: 16))
                        .foregroundColor(.black)
                    Spacer(minLength: 10)
                    Text(gunung.gunungLocation)
                        .font(.system(size: 16))
                        .foregroundColor(.black)
                    
                }
            }.padding(EdgeInsets(top: 0, leading: 16, bottom: 16, trailing: 16))
            
        }
    }

struct gunungDetail_Previews: PreviewProvider {
    static var previews: some View {
        GunungDetail(gunung: gunung[0])
    }
}
