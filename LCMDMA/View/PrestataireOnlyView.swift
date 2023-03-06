//
//  PrestataireOnlyView.swift
//  LCMDMA
//
//  Created by Valentin Munch on 05.03.23.
//

import SwiftUI

struct PrestataireOnlyView: View {
    var prestataire: Prestataires
    
    var body: some View {
        VStack{
            Spacer()
            
            Image(prestataire.image)
                .resizable()
                .scaledToFit()
                .frame(height: 180)
                .cornerRadius(15)
            
            Text(prestataire.nom)
                .font(.custom("Roboto-Bold", size: 30))
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            Text(prestataire.type)
                .font(.custom("Roboto-Medium", size: 20))
                .foregroundColor(.secondary)
            
            Text(prestataire.description)
                .font(.custom("Roboto-Regular", size: 15))
                .padding()
            
            Spacer()
            
            
            
        }
    }
}

struct PrestataireOnlyView_Previews: PreviewProvider {
    static var previews: some View {
        PrestataireOnlyView(prestataire: Prestataires.listePrestataires[0])
            .previewLayout(.sizeThatFits)
    }
}
