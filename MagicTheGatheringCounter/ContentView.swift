//
//  ContentView.swift
//  MagicTheGatheringCounter
//
//  Created by Yann Durand on 06/09/2023.
//

import SwiftUI

struct ContentView: View {
    //TODO: Rendre responsive
    @State var lifeCounter = 20

    var body: some View {
        VStack {
            Spacer()
            HStack {
                Text("\(lifeCounter)")
                    .fontWeight(.bold)
                    //.foregroundColor(Color.white)
                    .padding()
            }.frame(width: 200.0, height: 600.0).font(.system(size: 96))
            
            HStack {
                Button("-5") {
                    lifeCounter = lifeCounter - 5
                }.buttonStyle(ChangeLifeButton())
                
                Button("-1") {
                    lifeCounter = lifeCounter - 1
                }.buttonStyle(ChangeLifeButton())
                
                Button("RESET") {
                    lifeCounter = 20
                }.buttonStyle(GrowingButton())
                
                Button("+1") {
                    lifeCounter = lifeCounter + 1
                }.buttonStyle(ChangeLifeButton())
                
                Button("+5") {
                    lifeCounter = lifeCounter + 5
                }.buttonStyle(ChangeLifeButton())
            }
            
            Spacer()
        }
        //TODO: Gérer le background (format + changement onClick)
        //.background(Image("black"))
        .onTapGesture(count: 1, perform: {
            
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct GrowingButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(.blue)
            .foregroundStyle(.white)
            .clipShape(Capsule())
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}

struct ChangeLifeButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: 46, height: 46)
            .font(.system(size: 18))
            .background(.gray)
            .clipShape(Circle())
    }
}
