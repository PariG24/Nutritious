//
//  ContentView.swift
//  EL Nutritious
//
//  Created by Pari Gulati on 6/30/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TabView{
                HomeView()
                    .tabItem{
                        Label("Home", systemImage: "house.circle")
                    }
                IngredientsView()
                    .tabItem {
                        Label("Ingredient Spotlight", systemImage: "drop.circle")
                    }
                ShoppingView()
                    .tabItem{
                        Label("Shop Here", systemImage: "bag.circle")
                    }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
