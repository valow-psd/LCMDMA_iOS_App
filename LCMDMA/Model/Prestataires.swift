//
//  Prestataires.swift
//  LCMDMA
//
//  Created by Valentin Munch on 05.03.23.
//

import Foundation


struct Prestataires: Identifiable{
    var id = UUID()
    var nom: String
    var description: String
    var type: String
    var image: String
    
    static var listePrestataires = [
        Prestataires(nom: "Nidavallir", description: "Forgeron d'armes de père en fils depuis 5 générations", type: "Forgeron", image: "Nidavallir"),
        Prestataires(nom: "Boulan-gégé", description: "Artisan boulanger réputé", type: "Boulanger", image: "Boulangégé"),
        Prestataires(nom: "ABII", description: "Membre de l'ABII, j'offre une large sélection de boissons, allant des bières artisanales aux vins de qualité supérieure", type: "Tavernier", image: "ABII"),
        Prestataires(nom: "Claudus Vitrail", description: "Vitrailliste de passion, je confectione également les vitraux des églises", type: "Vitrailliste", image: "ClaudusVitrail"),
        Prestataires(nom: "PotOFeu", description: "Potier depuis mon plus jeune âge, j'ai toujours aimé laisser exprimer ma créativité", type: "Poterie", image: "Potofeu"),
        Prestataires(nom: "Chaussures aux moines", description: "Des chaussures comme vous n'en trouverez nulle part ailleurs", type: "Cordonnier", image: "ChaussuresAuxMoines"),
        Prestataires(nom: "Écurie Audada", description: "De beaux chevaux bien traités qui vous emmeneront pour une promenade d'exception", type: "Écurie", image: "Audada"),
        Prestataires(nom: "Spam Bow", description: "Le tir à l'arc, plus qu'un sport, une passion", type: "Stand de tir à l'arc", image: "SpamBow"),
    ]
}
