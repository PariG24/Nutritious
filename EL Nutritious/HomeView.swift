//
//  HomeView.swift
//  EL Nutritious
//
//  Created by Pari Gulati on 7/1/23.
//

import SwiftUI

struct HomeView: View {
    @Environment(\.openURL) var openURL
    var body: some View {
        VStack{
         Text("YOUR NUTRITIOUS REGIMEN")
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(Color(red: 0.9764705882352941, green: 0.7529411764705882, blue: 0.796078431372549))
            .multilineTextAlignment(.center)
        Text("Show skin some love—every day and every night.")
            .font(.subheadline)
            .multilineTextAlignment(.center)
            NavigationStack{
                ScrollView{
                    VStack{
                        ZStack{
                            VStack(spacing: 10.0) {
                                
                                Image("Cleanser")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                
                                
                                Text("CLEANSER")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(red: 0.9725490196078431, green: 0.9294117647058824, blue: 0.9176470588235294))
                                
                                Text("Say goodbye to excess shine with dual-action New Nutritious 2-in-1 Foam Cleanser. Gently cleanses and deeply purifies.")
                                    .foregroundColor(Color(hue: 0.936, saturation: 0.082, brightness: 0.495))
                            }
                            .padding()
                            .background(Rectangle()
                                .foregroundColor(Color(red: 0.9764705882352941, green: 0.7529411764705882, blue: 0.796078431372549))
                                        
                            )
                            .cornerRadius(15)
                            .shadow(radius: 15)
                            .padding()
                            
                        }
                        
                    }
                    ZStack{
                        VStack(spacing: 10.0) {
                            
                            Image("Lotion")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                            Text("TREATMENT LOTION")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(Color(red: 0.9725490196078431, green: 0.9294117647058824, blue: 0.9176470588235294))
                            Text("Keep calm and glow on. Help reduce visible redness withNew Nutritious Radiant Essence Lotion. Awakens, balances and calms.")
                                .foregroundColor(Color(hue: 0.936, saturation: 0.082, brightness: 0.495))
                        }
                        .padding()
                        .background(Rectangle()
                            .foregroundColor(Color(red: 0.9764705882352941, green: 0.7529411764705882, blue: 0.796078431372549))
                        )
                        .cornerRadius(15)
                        .shadow(radius: 15)
                        .padding()
                        
                    }
                    ZStack{
                        VStack(spacing: 20.0) {
                            
                            Image("Cream")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                            Text("SOFT CREME / MASK")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(Color(red: 0.9725490196078431, green: 0.9294117647058824, blue: 0.9176470588235294))
                            Text("Say goodbye to dry skin with pillowy-soft New Nutritious Melting Soft Creme/Mask. Quenches with soothing hydration. Calms. Renews. Strengthens.")
                                .foregroundColor(Color(hue: 0.936, saturation: 0.082, brightness: 0.495))
                            
                        }
                        .padding()
                        .background(Rectangle()
                            .foregroundColor(Color(red: 0.9764705882352941, green: 0.7529411764705882, blue: 0.796078431372549)))
                        .cornerRadius(15)
                        .shadow(radius: 15)
                        .padding()
                    }
                    ZStack{
                        VStack(spacing: 20.0) {
                            
                            Image("GAME")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                            Text("Play Now! ")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(Color(red: 0.9725490196078431, green: 0.9294117647058824, blue: 0.9176470588235294))
                            Text("Just click on the link below to get redirected to our game! ")
                                .foregroundColor(Color(hue: 0.936, saturation: 0.082, brightness: 0.495))
                            Button("Click Here To Play") {
                                openURL(URL(string: "https://www.esteelauder.com/estee-lauder-game")!)
                            }
                        }
                        .padding()
                        .background(Rectangle()
                            .foregroundColor(Color(red: 0.9764705882352941, green: 0.7529411764705882, blue: 0.796078431372549)))
                        .cornerRadius(15)
                        .shadow(radius: 15)
                        .padding()
                    }
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
