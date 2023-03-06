//
//  Activites.swift
//  LCMDMA
//
//  Created by Valentin Munch on 04.03.23.
//

import Foundation

struct Activites: Identifiable{
    var id = UUID()
    var title: String
    var description: String
    var image: String
    
    static var listeActivites = [
        Activites(title: "Joutes ⚔️", description: "Découvrez l'art de la joute, selon les traditions du moyen-âge. De nombreux chevaux et cavaliers vous attendent pour vous faire découvrir cette discipline !", image: "Joute"),
        Activites(title: "Taverne 🍻", description: "Découvrez l'art de boire, selon les traditions du moyen-âge. De nombreux chevaux et cavaliers vous attendent pour vous faire découvrir cette discipline !", image: "ImgTaverne"),
        Activites(title: "Spectacles 🎫", description: "Assistez à des spectacles grandioses tels qu'une compétition de lancer de nain encadrée, des chansons de troubadours ainsi que des scènes de théâtre !", image: "ImgSpectacles"),
        Activites(title: "Tir à l'Arc 🏹", description: "Venez mettre à l'épreuve votre précision et votre concentration dans une épreuve de tir à l'arc, une discipline historiquement utilisée pour la chasse et le combat.", image: "ImgTirALarc"),
        Activites(title: "Forgeron ⚒️", description: "Découvrez le processus de fabrication d'armes et d'outils métalliques présenté par nos talentueux forgerons et tout leur savoir-faire !", image: "ImgForgeron")
        
    ]
}
