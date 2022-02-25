//
//  RegisterView.swift
//  Assignment1
//
//  Created by ramy on 2022-02-25.
//

import SwiftUI

struct RegisterView: View {
    @State private var animatedText = false
    @State private var email = ""
    @State private var password = ""
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var scaleRegister: CGFloat = 1
    
    var body: some View {
        GeometryReader{ geo in
            ZStack{
                Color(red: 0.098, green: 0.514, blue: 0.776).edgesIgnoringSafeArea(.all)
                VStack{
                    Text("Register")
                        .fontWeight(.bold)
                        .font(.largeTitle)
                        .foregroundColor(Color(red: 0.906, green: 0.435, blue: 0.318))
                        .position(x: geo.size.width * 0.5, y: geo.size.height * 0.1)
                        .scaleEffect(animatedText ? 0.8 : 0.5)
                        .opacity(animatedText ? 1 : 0.8)
                        .animation(
                            .easeOut(duration: 0.9)
                                .repeatForever(autoreverses: true)
                                .delay(0.4), value: animatedText)
                        .onAppear() {
                            self.animatedText.toggle()
                        }
                    TextField("First Name", text: $firstName).background(Color.white)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .cornerRadius(9.0)
                        .frame(width: geo.size.width * 0.8)
                        .position(x: geo.size.width * 0.5, y: geo.size.height * 0.2)
                    TextField("Last Name", text: $lastName).background(Color.white)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .cornerRadius(9.0)
                        .frame(width: geo.size.width * 0.8)
                        .position(x: geo.size.width * 0.5, y: geo.size.height * 0.1)
                    TextField("Email", text: $email).background(Color.white)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .cornerRadius(9.0)
                        .frame(width: geo.size.width * 0.8)
                        .position(x: geo.size.width * 0.5, y: geo.size.height * 0)
                    TextField("Password", text: $password).background(Color.white)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .cornerRadius(9.0)
                        .frame(width: geo.size.width * 0.8)
                        .position(x: geo.size.width * 0.5, y: -geo.size.height * 0.1)
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

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
