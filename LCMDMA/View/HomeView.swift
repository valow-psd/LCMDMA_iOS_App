//
//  ContentView.swift
//  LCMDMA
//
//  Created by Valentin Munch on 02.03.23.
//

import SwiftUI

struct HomeView: View {
    
    var data: [Activites]
    
    var body: some View {
    
        ScrollView() {
            VStack(spacing: 0) {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 90)
                    .cornerRadius(15)
                    .padding(10)
                
                Text("L'Évenement médiéval n°1 en Franche Comte ! ")
                    .font(.custom("Roboto-Bold", size: 30))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
            }
            .padding(20)
            .background(Image("HomePage")
                .frame(width: 100, height: 100))
            
            
            VStack(alignment: .leading) {
                Text("Présentation")
                    .font(.custom("Roboto-Bold", size: 30))
                    .padding(.leading, -150)
                    .frame(alignment: .topLeading)
                Text("_")
                    .padding(.top, -45)
                    .padding(.leading, -150)
                    .font(.custom("Roboto-Bold", size: 30))
            }
            .padding(.top, 70)
            
            VStack() {
                ForEach(data){ activites in
                    CardAccueil(activites: activites)
                }
                
            }
                
                
                
                
            }
            
        }
        
        
        
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(data: Activites.listeActivites)
    }
}
