//
//  DetailView.swift
//  EL Nutritious
//
//  Created by Pari Gulati on 7/12/23.
//

import SwiftUI

struct DetailView: View {
    var product: Product
    
    var body: some View {
        ScrollView {
            VStack (spacing: 30){
                Image(product.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .scaledToFit()
                    .frame(width: 450, height: 850, alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .frame(height: 400)
                VStack (spacing: 15){
                    Text(product.name)
                        .font(.largeTitle)
                        .bold()
                        .multilineTextAlignment(.center)
                    
                    Text("$\(product.price)")
                        .font(.largeTitle)
                        .bold()
                        .multilineTextAlignment(.center)
                    Text("\(product.quantity) oz")
                        .font(.title)
                        .bold()
                        .multilineTextAlignment(.center)
                    VStack (spacing: 30) {
                        if !product.description.isEmpty {
                            Text(product.description)
                                .frame(width: 350)
                                .multilineTextAlignment(.leading)
                        }
                    }
                }
            }
        }
        .padding(.horizontal)
        .ignoresSafeArea(.container, edges: .top)
    }
    
    struct DetailView_Previews: PreviewProvider {
        static var previews: some View {
            DetailView(product: productList[0])
        }
    }
}
