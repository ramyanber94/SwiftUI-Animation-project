//
//  Assignment1App.swift
//  Assignment1
//
//  Created by ramy on 2022-02-23.
//

import SwiftUI

@main
struct Assignment1App: App {
    @State private var showLunchScreen: Bool = true
    var body: some Scene {
        WindowGroup {
            ZStack{
                LoginView().navigationBarHidden(true)
                ZStack{
                    if showLunchScreen{
                        LaunchView(showLaunch: $showLunchScreen).transition(.move(edge: .leading))
                    }
                }.zIndex(2.0)
            }
        }
    }
}
