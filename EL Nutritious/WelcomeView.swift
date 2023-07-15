//
//  WelcomeView.swift
//  EL Nutritious
//
//  Created by Pari Gulati on 7/1/23.
//

import SwiftUI

extension UserDefaults {
    var welcomeScreenShown: Bool {
        get {
            return (UserDefaults.standard.value(forKey: "welcomeScreenShown") as? Bool) ?? false
        } set {
            UserDefaults.standard.setValue(newValue, forKey: "welcomeScreenShown")
        }
    }
}

struct WelcomeView: View {
        var body: some View {
            VStack{
                if UserDefaults.standard.welcomeScreenShown {
                    ContentView()
                } else {
                    WelcomeScreen()
                }
            }
        }
    }

    struct WelcomeScreen: View {
        @AppStorage("welcomeScreenShown")
        var welcomeScreenShown: Bool = false
        
        var body: some View {
            NavigationStack{
                ZStack{
                       PlayerView()
                           .edgesIgnoringSafeArea(.all)
                       
                       VStack{
                           NavigationLink(destination: ContentView()) {
                               Text("Go To Home Page")
                                   .foregroundColor(Color(hue: 1.0, saturation: 0.004, brightness: 0.405))
                                   
                           }
                           Rectangle()
                           .opacity(0)
                          .tint(Color(red: 0.996078431372549, green: 0.7764705882352941, blue: 0.8196078431372549))
                          .padding(.top, 50.0)
                       }
                }
            }
                .onAppear(perform: {
                    UserDefaults.standard.welcomeScreenShown = true
                })
        }
    }

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
