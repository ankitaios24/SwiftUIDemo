//
//  ProductModel.swift
//  IcecreamShop
//
//  Created by Ankita Thakur on 26/01/24.
//

import Foundation
import SwiftUI


struct Product: Identifiable{
    var id = UUID().uuidString
    var name : String
    var asset:String
    var price:String
    var image: Image{
        Image(asset)
    }
 
    
   
}

var product = [Product(name: "Choclate Icecream", asset: "1", price: "100"),
               Product(name: "Vanila Icecream", asset: "2", price: "120"),
               Product(name: "Combo Icecream", asset: "3", price: "80"),
               Product(name: "Butterscotch Icecream", asset: "4", price: "130"),
               Product(name: "Mango Icecream", asset: "5", price: "150")
               ]
