//
//  IntroView.swift
//  IcecreamShop
//
//  Created by Ankita Thakur on 25/12/23.
//

import SwiftUI

struct IntroView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color("BgColor").edgesIgnoringSafeArea(.all)
                VStack{
                    Spacer()
                    ImageView(name: "15", radius: 125, width: 250, height: 250)
                    Spacer()
                    NavigationLink(
                        destination: SignupView().navigationBarHidden(true),
                        label: {
                            ButtonView(title: "Get Start", color: "TheamColor", textColor: .white)
                        })
                    .padding()
                    NavigationLink(
                        destination: LoginView().navigationBarHidden(true),
                        label: {
                            ButtonView(title: "Log In", color: "whiteColor", textColor: .theam)
                        })
                    .navigationBarHidden(true)
                    .padding(8)
                }
            }
        }
    }
}

#Preview {
    IntroView()
}
