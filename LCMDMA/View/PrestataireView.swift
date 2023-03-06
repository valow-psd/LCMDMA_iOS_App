//
//  PrestataireView.swift
//  LCMDMA
//
//  Created by Valentin Munch on 02.03.23.
//

import SwiftUI

struct PrestataireView: View {
    var prestaData : [Prestataires]
    private let adaptiveColumns = [
        GridItem(.adaptive(minimum: 170))
    ]
    
    var body: some View {
        NavigationView() {
            ScrollView{
                VStack(alignment: .leading) {
                    Text("Tous Les Prestataires")
                        .font(.custom("Roboto-Bold", size: 30))
                        .frame(alignment: .topLeading)
                    Text("_")
                        .padding(.top, -50)
                        .padding(.leading, 140)
                        .font(.custom("Roboto-Medium", size: 50))
                }
                .padding(.top, 70)
                
                VStack() {
                    LazyVGrid(columns: adaptiveColumns, spacing: 15){
                        ForEach(prestaData, id: \.id){ prestataires in
                            NavigationLink(
                                destination: PrestataireOnlyView(prestataire: prestataires),
                                label: { CardPrestataires(prestataires: prestataires)
                                        
                                }
                            )
                            .buttonStyle(PlainButtonStyle())

                            
                        }
                    }
                    
                    
                }
            }
            
                
            }
            
        }
    }


struct PrestataireView_Previews: PreviewProvider {
    static var previews: some View {
        PrestataireView(prestaData: Prestataires.listePrestataires)
    }
}
