//
//  LoginView.swift
//  IcecreamShop
//
//  Created by Ankita Thakur on 25/12/23.
//

import SwiftUI

struct SignupView: View {
    @State var username = String()
    @State var password  = String()
    @Environment(\.dismiss) var dismiss
    @State private var navigateToHome = false
    
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
                
                ImageView(name: "8", radius: 0, width: 220, height: 220)
                // Header Title Setup
                VStack{
                    VStack(alignment: .leading, spacing: 8){
                        HeaderView(title: "Signup", fontName: "RobotoSlab-Bold", size: 34, color: .theam, padding: 0)
                        
                        HeaderView(title: "Please sign up to continue", fontName: "RobotoSlab-Bold", size: 15, color: .primary, padding: 0)
                        
                    }
                    .padding(20)
                    // Form setup
                    SignupForm()
                   
                    // Bottom Button Setup
                    ZStack{
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
                    }
                    .padding(.top,35)
                    Spacer()
                 
                    
                }
                .background(.white)
                .cornerRadius(40, corners: [.topLeft,.topRight])
                 .padding(.bottom,-32)
                
            }
           
        }
    }
}

#Preview {
    SignupView()
}





struct SignupForm: View {
    @State var firstName = String()
    @State var lastName  = String()
    @State var username = String()
    @State var password = String()
    @State var confirmpass  = String()
    var body: some View {
        // Form Setup
        VStack(spacing: 25){
            
            VStack(alignment: .center,spacing:35){
                
                VStack(alignment: .center){
                    CustomTextfield(placeholder: Text("First Name"), fontName: "RobotoSlab-Bold", fontSize: 18, fontColor: .primary, username: $firstName)
                    Divider()
                        .background(Color.black)
                        .frame(height: 1)
                }
            }
            VStack(alignment: .center,spacing:35){
                
                VStack(alignment: .center){
                    CustomTextfield(placeholder: Text("Last Name"), fontName: "RobotoSlab-Bold", fontSize: 18, fontColor: .primary, username: $lastName)
                    Divider()
                        .background(Color.black)
                        .frame(height: 1)
                }
            }
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
            VStack(alignment: .center,spacing:35){
                
                VStack(alignment: .center){
                    CustomTextfield(placeholder: Text("Confirm Password"), fontName: "RobotoSlab-Bold", fontSize: 18, fontColor: .primary, username: $firstName)
                    Divider()
                        .background(Color.black)
                        .frame(height: 1)
                }
            }
            
        }
        .padding(.horizontal,35)
        
    }
}
