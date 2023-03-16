//
//  PlanningView.swift
//  LCMDMA
//
//  Created by Valentin Munch on 02.03.23.
//

import SwiftUI
import UIKit

struct PlanningView: View {
    
    var window: UIWindow?
    
    var body: some View {
        storyBoardView().edgesIgnoringSafeArea(.all)
        
    }
}

struct PlanningView_Previews: PreviewProvider {
    static var previews: some View {
        PlanningView()
    }
}

struct storyBoardView: UIViewControllerRepresentable{
    
    func makeUIViewController(context content: Context) -> UIViewController {
        let stroyboard = UIStoryboard(name: "Calendar", bundle: Bundle.main)
        let controller = stroyboard.instantiateViewController(identifier: "Calendar")
        return controller
    }
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        
    }
    
}
