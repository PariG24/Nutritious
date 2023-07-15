//
//  TabBarView.swift
//  EL Nutritious
//
//  Created by Pari Gulati on 6/30/23.
//

/*import SwiftUI

/*extension UserDefaults {
    var welcomeScreenShown: Bool {
        get {
            return (UserDefaults.standard.value(forKey: "welcomeScreenShown") as? Bool) ?? false
        } set {
            UserDefaults.standard.setValue(newValue, forKey: "welcomeScreenShown")
        }
    }
}*/

struct TabBarView: View {
    
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
                           Text("Skip")
                       }
                       .buttonStyle(.borderedProminent)
                       .tint(Color(red: 0.996078431372549, green: 0.7764705882352941, blue: 0.8196078431372549))
                       .padding()
                   }
            }
        }
            .onAppear(perform: {
                UserDefaults.standard.welcomeScreenShown = true
            })
    }
}

/*struct HomeScreen: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem{
                    Label("Home", systemImage: "house")
                }
            IngredientsView()
                .tabItem {
                    Label("Ingredients", systemImage: "drop.circle")
                }
            }
    }
}*/

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
*/
