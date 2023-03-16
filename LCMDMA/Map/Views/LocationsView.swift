//
//  LocationsView.swift
//  LCMDMA
//
//  Created by Valentin Munch on 09.03.23.
//

import SwiftUI
import MapKit

struct LocationsView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel
     
    
    var body: some View {
        ZStack{
            Map(coordinateRegion: $vm.mapRegion, annotationItems: vm.locations , annotationContent: { location in
                MapAnnotation(coordinate: location.coordinates){
                        LocationMapAnnotationView()
                        .scaleEffect(vm.mapLocation == location ? 1 : 0.7)
                        .shadow(radius: 10)
                        .onTapGesture {
                            vm.showNextLocation(location: location)
                        }
                }
            })
                .ignoresSafeArea()

            
            VStack{
                Spacer()
                
                ZStack{
                    ForEach(vm.locations){ location in
                        if vm.mapLocation == location {
                            LocationPreviewView(location: location)
                                .shadow(color: Color.black.opacity(0.3), radius: 20)
                                .padding()
                                .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading)))
                        }
                        
                    }
                }
            }
        }
    }
}

struct LocationsView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView()
            .environmentObject(LocationsViewModel())
    }
}
