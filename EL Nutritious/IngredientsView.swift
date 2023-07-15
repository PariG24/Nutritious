//
//  IngredientsView.swift
//  EL Nutritious
//
//  Created by Pari Gulati on 6/30/23.
//

import SwiftUI

struct IngredientsView: View {
    var body: some View {
        VStack{
            Text("INGREDIENT SPOTLIGHT")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color(red: 0.9764705882352941, green: 0.7529411764705882, blue: 0.796078431372549))
            Text("NUTRITIOUS PEAK PERFORMANCE SKINCARE COLLECTION")
                .font(.subheadline)
                .multilineTextAlignment(.center)
            ScrollView{
                VStack{
                    ZStack{
                        VStack(spacing: 10.0) {
                            
                            Image("SweetKelp")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                            
                            
                            Text("Helps Fight Oil + Minimizes Pores")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(Color(red: 0.9725490196078431, green: 0.9294117647058824, blue: 0.9176470588235294))
                        }
                        .padding()
                        .background(Rectangle()
                            .foregroundColor(Color(red: 0.829, green: 0.811, blue: 0.527))
                        )
                        .cornerRadius(15)
                        .shadow(radius: 15)
                        .padding()
                        
                    }
                    
                }
                ZStack{
                    VStack(spacing: 10.0) {
                        
                        Image("RedAlgae")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        Text("Helps Soothe The Skin + Reduces Visible Redness")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color(red: 0.9725490196078431, green: 0.9294117647058824, blue: 0.9176470588235294))
                    }
                    .padding()
                    .background(Rectangle()
                        .foregroundColor(Color(red: 0.915, green: 0.59, blue: 0.588))
                    )
                    .cornerRadius(15)
                    .shadow(radius: 15)
                    .padding()
                    
                }
                ZStack{
                    VStack(spacing: 20.0) {
                        
                        Image("CoconutWater")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        Text("Hydrates + Nourishes")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color(red: 0.9725490196078431, green: 0.9294117647058824, blue: 0.9176470588235294))
                        
                    }
                    .padding()
                    .background(Rectangle()
                        .foregroundColor(Color(red: 0.783, green: 0.546, blue: 0.617))
                    )
                    .cornerRadius(15)
                    .shadow(radius: 15)
                    .padding()
                    
                }
                
            }
        }
    }
}

struct IngredientsView_Previews: PreviewProvider {
    static var previews: some View {
        IngredientsView()
    }
}
