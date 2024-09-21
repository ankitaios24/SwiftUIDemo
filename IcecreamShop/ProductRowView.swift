//
//  ProductRowView.swift
//  IcecreamShop
//
//  Created by Ankita Thakur on 26/01/24.
//

import SwiftUI

struct ProductRowView: View {
    let product :Product
    let imageSize :CGFloat = 50
    var body: some View {
        HStack{
            ZStack{
                Color("C1").frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                product.image.resizable()
                    .scaledToFill()
                    .frame(width: imageSize,height: imageSize)
                    .clipped()
            }
            VStack(alignment: .leading, spacing: 5){
                Text(product.name)
                    .font(.headline)
                    .foregroundColor(.black)
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity , alignment: .leading)
                Text("$" + product.price)
                    .foregroundColor(.black)
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity , alignment: .leading)
            }
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                ZStack{
                    Circle()
                        .foregroundColor(.black)
                        .frame(width: 35,height: 35)
                    Image(systemName: "cart")
                        .font(.title3)
                        .foregroundColor(.white)
                }
                .padding(.trailing,10)
            })
        }
        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity , alignment: .leading)
        .background(.white)
        .cornerRadius(10, corners: .allCorners)
        .shadow(color: Color("BgColor"), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)

    }
}

#Preview {
    ProductRowView(product: product.first!)
        .previewLayout(.fixed(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height))
}
