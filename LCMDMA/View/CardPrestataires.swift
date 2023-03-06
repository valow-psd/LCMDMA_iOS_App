//
//  CardPrestataires.swift
//  LCMDMA
//
//  Created by Valentin Munch on 05.03.23.
//

import SwiftUI

struct CardPrestataires: View {
   
        let prestataires : Prestataires
    
        var body: some View {
            ZStack() {
                Image(prestataires.image)
                    .resizable()
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                
                Rectangle()
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .opacity(0.70)
                VStack() {
                    Text(prestataires.nom)
                        .foregroundColor(.white)
                        .font(.custom("Roboto-Bold", size: 20))
                    
                    Text(prestataires.type)
                        .foregroundColor(Color.gray)
                        .font(.custom("Roboto-Medium", size: 12))
                    
                }
            }
            .frame(width: 180, height: 150)
            .padding(.bottom, 30)
            
        }
}


struct CardPrestataires_Previews: PreviewProvider {
    static var previews: some View {
        CardPrestataires(prestataires: Prestataires.listePrestataires[0])
            .previewLayout(.sizeThatFits)
    }
}
