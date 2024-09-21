//
//  LoginView.swift
//  IcecreamShop
//
//  Created by Ankita Thakur on 25/12/23.
//

import SwiftUI

struct LoginView: View {
    @State var username = String()
    @State var password  = String()
    @State private var navigateToHome = false
    @State private var navigateToSignup = false
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack{
            // Backgroud and Image setup
            Color("C1").edgesIgnoringSafeArea(.all)
            VStack{
                
                HStack( spacing: 10){
                    Button(action: {
                     dismiss()
                    }, label: {
                        ZStack{
                            Circle()
                                .foregroundColor(Color("TheamColor"))
                                .frame(width: 35,height: 35)
                            Image(systemName: "arrow.left")
                                .foregroundColor(.white)
                        }
                        .padding(10)
                    })
                    Spacer()
                }
                
                
                Spacer()
                ImageView(name: "8", radius: 0, width: 250, height: 250)
                Spacer()
                // Header Title Setup
                VStack{
                    VStack(alignment: .leading, spacing: 8){
                        HeaderView(title: "Login", fontName: "RobotoSlab-Bold", size: 34, color: .theam, padding: 20)
                        
                        HeaderView(title: "Please sign In to continue", fontName: "RobotoSlab-Bold", size: 15, color: .primary, padding: 0)
                        
                    }
                    .padding(30)
                    
                    
                    // Form Setup
                    VStack(spacing: 25){
                        VStack(alignment: .center,spacing:35){
                            
                            VStack(alignment: .center){
                                CustomTextfield(placeholder: Text("Username"), fontName: "RobotoSlab-Bold", fontSize: 18, fontColor: .primary, username: $username)
                                Divider()
                                    .background(Color.black)
                                    .frame(height: 1)
                            }
                        }
                        VStack(alignment: .center,spacing:35){
                            
                            VStack(alignment: .center){
                                CustomTextfield(placeholder: Text("Password"), fontName: "RobotoSlab-Bold", fontSize: 18, fontColor: .primary, username: $username)
                                Divider()
                                    .background(Color.black)
                                    .frame(height: 1)
                            }
                        }
                        
                        // Button Setup
                        
                        HStack{
                            Spacer()
                            Button(action: {
                               // self.navigateToHome = true
                            }, label: {
                                Text("Forgot Password")
                                    .modifier(CustomTextM(fontName: "RobotoSlab-Light", fontSize: 14, fontColor: .primary))
                                
                            })
                           // .sheet(isPresented: $navigateToHome) {
//                                               HomeListView()
//                                           }
                        }
                        
                        
                    }
                    .padding(.horizontal,35)
                    
                    // Bottom Button Setup
                    Button(action: {
                        navigateToHome = true
                    }, label: {
                        ZStack{
                            Circle()
                                .foregroundColor(.theam)
                                .frame(width: 60,height: 60)
                            Image(systemName: "arrow.right")
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.white)
                        }
                    })
                    .fullScreenCover(isPresented: $navigateToHome) {
                               HomeListView()
                           }
                    .padding(.top,35)
                    Spacer()
                    // Bottom Signup Button
                    Button(action: {
                        navigateToSignup = true
                        
                    }, label: {
                        Text("Signup , if you are new!")
                            .modifier(CustomTextM(fontName: "RobotoSlab-Bold", fontSize: 17, fontColor: .primary))
                        
                    })
                    .fullScreenCover(isPresented: $navigateToSignup) {
                               SignupView()
                           }
                    .padding(.bottom,30)
                    
                }
                .background(.white)
                .cornerRadius(40, corners: [.topLeft,.topRight])
                 .padding(.bottom,-32)
                
            }
           
        }
    }
}

#Preview {
    LoginView()
}
