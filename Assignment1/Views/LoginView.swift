//
//  LoginView.swift
//  Assignment1
//
//  Created by ramy on 2022-02-23.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var scaleSignIn: CGFloat = 1
    @State private var scaleRegister: CGFloat = 1
    @State private var animatedText = false
  
    var body: some View {
        GeometryReader{ geo in
            ZStack{
                Color(red: 0.098, green: 0.514, blue: 0.776).edgesIgnoringSafeArea(.all)
                VStack{
                    Text("LogIn")
                        .fontWeight(.bold)
                        .font(.largeTitle)
                        .foregroundColor(Color(red: 0.906, green: 0.435, blue: 0.318))
                        .position(x: geo.size.width * 0.5, y: geo.size.height * 0.1)
                        .rotationEffect(Angle(degrees: animatedText ? 0 : 360))
                        .animation(
                            .easeIn(duration: 1.5)
                                .repeatCount(2)
                                .delay(0.4), value: animatedText)
                        .onAppear() {
                           animatedText = true
                        }
                    TextField("Email", text: $email).background(Color.white)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .cornerRadius(9.0)
                        .frame(width: geo.size.width * 0.8)
                        .position(x: geo.size.width * 0.5, y: geo.size.height * 0.2)
                    TextField("Password", text: $password).background(Color.white)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .cornerRadius(9.0)
                        .frame(width: geo.size.width * 0.8)
                        .position(x: geo.size.width * 0.5, y: geo.size.height * 0.1)
                    Button("Sign In") {
                        scaleSignIn += 1
                        }
                        .padding()
                        .background(Color(red: 0.906, green: 0.435, blue: 0.318))
                        .clipShape(Capsule())
                        .font(.title2.bold())
                        .foregroundColor(Color.white)
                        .position(x: geo.size.width * 0.5, y: geo.size.height * 0.09)
                        .scaleEffect(scaleSignIn)
                        .animation(.easeIn, value: scaleSignIn)
                    Button("Register") {
                        scaleRegister += 1
                        }
                        .padding()
                        .background(Color(red: 0.906, green: 0.435, blue: 0.318))
                        .clipShape(Capsule())
                        .font(.title2.bold())
                        .foregroundColor(Color.white)
                        .position(x: geo.size.width * 0.5, y: geo.size.height * 0.01)
                        .scaleEffect(scaleRegister)
                        .animation(.easeIn, value: scaleRegister)
                }
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
