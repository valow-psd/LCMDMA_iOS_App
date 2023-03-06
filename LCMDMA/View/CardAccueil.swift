//
//  CardAccueil.swift
//  LCMDMA
//
//  Created by Valentin Munch on 05.03.23.
//

import SwiftUI

struct CardAccueil: View {
    
    let activites : Activites
    
    var body: some View {
        ZStack() {
            Image(activites.image)
                .resizable()
                .clipShape(RoundedRectangle(cornerRadius: 20))
            Rectangle()
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .opacity(0.70)
            VStack() {
                Text(activites.title)
                    .foregroundColor(.white)
                    .font(.custom("Roboto-Bold", size: 30))
                    .padding(.leading, -130)
                
                Text(activites.description)
                    .foregroundColor(Color.gray)
                    .font(.custom("Roboto-Medium", size: 12))
                    .padding(.leading,10)
                
            }
        }
        .frame(width: 360, height: 220)
        .padding(.bottom, 30)    }
}

struct CardAccueil_Previews: PreviewProvider {
    static var previews: some View {
        CardAccueil(activites: Activites.listeActivites[0]).previewLayout(.sizeThatFits)
    }
}
