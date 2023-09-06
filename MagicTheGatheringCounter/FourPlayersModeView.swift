//
//  TwoPlayersModeView.swift
//  MagicTheGatheringCounter
//
//  Created by Yann Durand on 06/09/2023.
//

import SwiftUI

struct FourPlayersModeView: View {

    var body: some View {
         VStack{
            HStack {
                ContentView()
                ContentView()
            }
            HStack {
                ContentView()
                ContentView()
            }
        }
    }
}

struct FourPlayersModeView_Previews: PreviewProvider {
    static var previews: some View {
        //TODO: Tester si c'est possible de passer des paramètres
        FourPlayersModeView()
    }
}
