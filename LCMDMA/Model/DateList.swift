//
//  dateModel.swift
//  LCMDMA
//
//  Created by fridelance raphael on 16/03/2023.
//

import Foundation

struct DateList: Identifiable{
    var id = UUID()
    var start: String
    var end: String
    var text: String
    
    static var listeDates = [
        DateList(start: "2023-07-08T10:00:00+0200", end: "2023-07-08T11:00:00+0200", text: "Tir à l'arc (stand de tir)"),
        DateList(start: "2023-07-08T14:00:00+0200", end: "2023-07-08T16:00:00+0200", text: "Séance Voyante (Dubiff)"),
        DateList(start: "2023-07-08T16:00:00+0200", end: "2023-07-08T17:00:00+0200", text: "Présantation d'engin de siège (Bosiege)"),
        DateList(start: "2023-07-08T16:00:00+0200", end: "2023-07-08T18:00:00+0200", text: "Fabrication d'une épée (Nidalevir)"),
        DateList(start: "2023-07-09T10:00:00+0200", end: "2023-07-09T12:00:00+0200", text: "Fabrication d'une épée (Forgciel)"),
        DateList(start: "2023-07-09T14:00:00+0200", end: "2023-07-09T16:00:00+0200", text: "Spectacle danse (Scène principale)")
    ]
}
