//
//  MainView.swift
//  LCMDMA
//
//  Created by Valentin Munch on 02.03.23.
//

import SwiftUI

struct ContentView: View {
    init(){
        UITabBar.appearance().backgroundColor = UIColor.black
        UITabBar.appearance().unselectedItemTintColor = UIColor.darkGray
    }
    
    @StateObject private var vm = LocationsViewModel()

    var body: some View {
        TabView {
            HomeView(data: Activites.listeActivites)
                .tabItem {
                    Label("Home", systemImage: "list.dash")
                }

            PrestataireView(prestaData: Prestataires.listePrestataires)
                .tabItem {
                    Label("Prestataires", systemImage: "person.3.fill")
                }
            LocationsView()
                .environmentObject(vm)
                .tabItem {
                    Label("Carte", systemImage: "map.fill")
                }

            PlanningView()
                .tabItem {
                    Label("Planning", systemImage: "calendar")
                }
        }
        .accentColor(.red)
        .onAppear{
            let appearance = UITabBarAppearance()
            
            appearance.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterial)
            
            appearance.backgroundColor = UIColor(Color.black.opacity(0.2))
            
            // Use this appearance when scrolling behind the TabView:
            UITabBar.appearance().standardAppearance = appearance
            // Use this appearance when scrolled all the way up:
            UITabBar.appearance().scrollEdgeAppearance = appearance
        }
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
