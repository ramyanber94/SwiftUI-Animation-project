//
//  LunchView.swift
//  Assignment1
//
//  Created by ramy on 2022-02-25.
//

import SwiftUI

struct LaunchView: View {
    var timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    @State private var counter: Int = 0
    @State private var loops: Int = 0
    @State private var textSizeChanged = false
    @Binding var showLaunch: Bool
    
    var body: some View {
        ZStack{
            Color(red: 0.098, green: 0.514, blue: 0.776).edgesIgnoringSafeArea(.all)
            Text("Welcome").fontWeight(.bold)
                .font(.largeTitle)
                .foregroundColor(.white)
                .scaleEffect(textSizeChanged ? 3.0 : 0.2)
                .animation(Animation.easeInOut(duration: 1.0), value: textSizeChanged)
        }.onReceive(timer , perform: { _ in
            textSizeChanged.toggle()
            withAnimation(.none){
                let lastIndex = 10
                if counter == lastIndex{
                    counter = 0
                    loops += 1
                    if loops >= 2 {
                        showLaunch = false
                    }
                }else{
                    counter += 1
                }
            }
        })
    }
}

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView(showLaunch: .constant(true))
    }
}

