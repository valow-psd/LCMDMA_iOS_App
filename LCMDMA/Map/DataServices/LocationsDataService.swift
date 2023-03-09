//
//  LocationsDataService.swift
//  MapTest
//
//  Created by Nick Sarno on 11/26/21.
//

import Foundation
import MapKit

class LocationsDataService {
    
    static let locations: [Location] = [
        Location(
            name: "Zone de tir 1",
            cityName: "Montby",
            coordinates: CLLocationCoordinate2D(latitude: 47.439877, longitude: 6.442878),
            description: "Ne franchissez-pas les barrières de sécurité ",
            imageNames: [
                "zone-tir-1",
            ]),
        Location(
                name: "Exposition d'armes de sièges",
                cityName: "Montby",
                coordinates: CLLocationCoordinate2D(latitude: 47.439722, longitude: 6.442480),
                description: "Soyez témoins de la puissance ",
                imageNames: [
                    "expo-armes-sieges",
            ]),
        Location(
            name: "Armes de sièges",
            cityName: "Montby",
            coordinates: CLLocationCoordinate2D(latitude: 47.439693, longitude: 6.443162),
            description: "Contemplez de près les armes de siège utilisées autrefois pour assiéger des châteaux",
            imageNames: [
                "armes-sieges",
            ]),
        Location(
            name: "Poterie",
            cityName: "Montby",
            coordinates: CLLocationCoordinate2D(latitude: 47.439584, longitude: 6.443132),
            description: "Fabriquez et repartez avec votre propre pot en terre cuite enseigné par notre potier",
            imageNames: [
                "poterie",
            ]),
        Location(
            name: "Zone de tir 2",
            cityName: "Montby",
            coordinates: CLLocationCoordinate2D(latitude: 47.439149, longitude: 6.442598),
            description: "Ne franchissez-pas les barrières de sécurité ",
            imageNames: [
                "zone-tir-1",
            ]),
        Location(
            name: "Scène 2",
            cityName: "Montby",
            coordinates: CLLocationCoordinate2D(latitude: 47.439582, longitude: 6.442742),
            description: "Assistez à une représentation théâtrale sur le thème de la vie quotidienne au Moyen-Âge.",
            imageNames: [
                "scene-1",
            ]),
        Location(
            name: "Torture",
            cityName: "Montby",
            coordinates: CLLocationCoordinate2D(latitude: 47.439306, longitude: 6.442865),
            description: "Visitez la chambre de torture et découvrez les méthodes de torture utilisées au Moyen-Âge.",
            imageNames: [
                "torture",
            ]),
        Location(
            name: "Stand de Tir",
            cityName: "Montby",
            coordinates: CLLocationCoordinate2D(latitude: 47.439149, longitude: 6.442831),
            description: "Venez manier l'arc et tester vos compétences de tireur d'élite sur notre stand de tir.",
            imageNames: [
                "stand-tir",
            ]),
        Location(
            name: "Taverne",
            cityName: "Montby",
            coordinates: CLLocationCoordinate2D(latitude: 47.439404, longitude: 6.442416),
            description: "Reprenez des forces dans notre taverne avec une bonne boisson et des mets raffinés",
            imageNames: [
                "taverne",
            ]),
        Location(
            name: "WC 1",
            cityName: "Montby",
            coordinates: CLLocationCoordinate2D(latitude: 47.439438, longitude: 6.442247),
            description: "Un espace WC est mis à votre disposition",
            imageNames: [
                "wc",
            ]),
        Location(
            name: "WC 2",
            cityName: "Montby",
            coordinates: CLLocationCoordinate2D(latitude: 47.438974, longitude: 6.443768),
            description: "Un espace WC est mis à votre disposition",
            imageNames: [
                "wc",
            ]),
        Location(
            name: "Remèdes et Plantes",
            cityName: "Montby",
            coordinates: CLLocationCoordinate2D(latitude: 47.439510, longitude: 6.442153),
            description: "Venez découvrir les plantes médicinales et les remèdes qu'utilisaient les villageois au Moyen-Âge.",
            imageNames: [
                "remedes-plantes",
            ]),
        Location(
            name: "Voyante",
            cityName: "Montby",
            coordinates: CLLocationCoordinate2D(latitude: 47.439559, longitude: 6.442251),
            description: "Une voyante vous attend pour vous prédire votre avenir... N'ayez pas peur d'aller la voir, elle ne vous mordra pas !",
            imageNames: [
                "voyante",
            ]),
        Location(
            name: "Boulanger",
            cityName: "Montby",
            coordinates: CLLocationCoordinate2D(latitude: 47.439567, longitude: 6.442369),
            description: "Dégustez des pains et viennoiseries préparés par notre boulanger.",
            imageNames: [
                "boulanger",
            ]),
        Location(
            name: "Secours",
            cityName: "Montby",
            coordinates: CLLocationCoordinate2D(latitude: 47.439708, longitude: 6.442268),
            description: "Un espace de secours est à votre dispositions pour soigner vos petits et gros bobos.",
            imageNames: [
                "secours",
            ]),
        Location(
            name: "Joutes",
            cityName: "Montby",
            coordinates: CLLocationCoordinate2D(latitude: 47.439742, longitude: 6.443823),
            description: "Encouragez votre chevalier préféré lors des joutes sanglantes.",
            imageNames: [
                "joutes",
            ]),
        Location(
            name: "Ecuries",
            cityName: "Montby",
            coordinates: CLLocationCoordinate2D(latitude: 47.439647, longitude: 6.444027),
            description: "Apprenez à vous occuper d'un cheval et chevauchez-le pour une balade dans les bois.",
            imageNames: [
                "ecuries",
            ]),
        Location(
            name: "Cordonnier",
            cityName: "Montby",
            coordinates: CLLocationCoordinate2D(latitude: 47.439355, longitude: 6.444616),
            description: "Observez la fabrication de chaussures et de bottes comme au Moyen-Âge.",
            imageNames: [
                "cordonnier",
            ]),
        Location(
            name: "Ébéniste",
            cityName: "Montby",
            coordinates: CLLocationCoordinate2D(latitude: 47.439272, longitude: 6.444582),
            description: "Notre ébéniste vous montrera tout son savoir-faire en s'adonnant à la fabrication de vos objets en bois.",
            imageNames: [
                "ebeniste",
            ]),
        Location(
            name: "Scène 1",
            cityName: "Montby",
            coordinates: CLLocationCoordinate2D(latitude: 47.439272, longitude: 6.443912),
            description: "Assistez à un spectacle grandiose de danse et de musique médiévale.",
            imageNames: [
                "scene-1",
            ]),
        Location(
            name: "Luthier",
            cityName: "Montby",
            coordinates: CLLocationCoordinate2D(latitude: 47.439000, longitude: 6.444179),
            description: "Observez la fabrication d'instruments de musique tels qu'un violon, une cythare ou une contrebasse.",
            imageNames: [
                "luthier",
            ]),
        Location(
            name: "Vitrailliste",
            cityName: "Montby",
            coordinates: CLLocationCoordinate2D(latitude: 47.439011, longitude: 6.443997),
            description: "Essayez-vous à la peinture sur verre et découvez les secrets de la fabrication d'un vitrail",
            imageNames: [
                "ClaudusVitrail",
            ]),
        Location(
            name: "Forgeron d'armes",
            cityName: "Montby",
            coordinates: CLLocationCoordinate2D(latitude: 47.439137, longitude: 6.443115),
            description: "Découvez les étapes de la fabrication d'armes telles que des épées, des lances ou des boucliers !",
            imageNames: [
                "forgeron-armes",
            ]),
        Location(
            name: "Forgeron Maréchal-Ferrant",
            cityName: "Montby",
            coordinates: CLLocationCoordinate2D(latitude: 47.439235, longitude: 6.443226),
            description: "Découvrez le processus de fabrication de la ferrure d'un cheval",
            imageNames: [
                "forgeron-marechal",
            ]),
        Location(
            name: "Forgeron d'outils",
            cityName: "Montby",
            coordinates: CLLocationCoordinate2D(latitude: 47.439352, longitude: 6.443340),
            description: "Apprenez à manier le marteau (avec protections) et découvrez la fabrication d'outils comme les faux, les couteaux ou les hâches.",
            imageNames: [
                "Potofeu",
            ]),
        Location(
            name: "Chateau de Montby",
            cityName: "Montby",
            coordinates: CLLocationCoordinate2D(latitude: 47.438716, longitude: 6.443501),
            description: "Visitez le château de Montby et découvrez son histoire.",
            imageNames: [
                "chateau",
            ]),
    ]
    
}
