//
//  ContentView.swift
//  MagicTheGatheringCounter
//
//  Created by Yann Durand on 06/09/2023.
//

import SwiftUI

struct MainMenu: View {
    
    //TODO: Faire en sorte de ne pas naviguer entre les views mais remplacer l'activité
    
    @State var score = 0
    @State var bestScore = 0
    @State var gameIsInProgress = false

    var body: some View {
        NavigationView {
            VStack {
                Text("MAGIC THE GATHERING: COUNTER")
                    .font(.title)
                    .multilineTextAlignment(.center)
                Spacer()
                
                NavigationLink(destination: ContentView()) {
                    Text("One player").padding().frame(width: 300.0, height: 46.0).background(Color.green)
                }
                
                NavigationLink(destination: TwoPlayersModeView()) {
                    Text("Two players").padding().frame(width: 300.0, height: 46.0).background(Color.green)
                }
                
                NavigationLink(destination: FourPlayersModeView()) {
                    Text("Four players").padding().frame(width: 300.0, height: 46.0).background(Color.green)
                }
                Spacer()
                Text("Developed by Nefaden")
                    .font(.footnote)
            }
        }
        //.background(Image("black"))
    }
}


struct MainMenu_Previews: PreviewProvider {
    static var previews: some View {
        MainMenu()
    }
}
