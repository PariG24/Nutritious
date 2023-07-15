//
//  StoriesView.swift
//  EL Nutritious
//
//  Created by Pari Gulati on 7/1/23.
//

import SwiftUI

struct ShoppingView: View {
    @StateObject var cartManager = CartManager()
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(productList, id: \.id) { product in
                        NavigationLink(destination: DetailView(product: product)){
                            ProductCard(product: product)
                                .environmentObject(cartManager)
                        }
                    }
                }
                .padding()
            }
            .navigationTitle(
                Text("Shop Here")
                .foregroundColor(Color(red: 0.892, green: 0.569, blue: 0.643)))
            .toolbar {
                NavigationLink{
                    CartView()
                        .environmentObject(cartManager)
                } label: {
                    CartButton(numberOfProducts: cartManager.products.count)
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ShoppingView_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingView()
    }
}
