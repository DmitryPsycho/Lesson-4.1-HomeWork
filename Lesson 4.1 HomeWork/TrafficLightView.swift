//
//  ContentView.swift
//  Lesson 4.1 HomeWork
//
//  Created by Psycho on 08.09.2022.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    @State private var currentLight = CurrentLight.red
    
    @State private var startButtonTitle = "START"
    
    @State private var redLightOpacity = 0.3
    @State private var yellowLightOpacity = 0.3
    @State private var greenLightOpacity = 0.3
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                LightView(color: .red, opacity: redLightOpacity)
                LightView(color: .yellow, opacity: yellowLightOpacity)
                LightView(color: .green, opacity: greenLightOpacity)
                Spacer()
                startButton(title: startButtonTitle) {
                    if startButtonTitle == "START" {
                        startButtonTitle = "NEXT"
                    }
                    colorSwitch()
                }
            }
            .padding()
        }
    }
    
    private func colorSwitch() {
        let lightIsOn = 1.0
        let lightIsOff = 0.3
        
        switch currentLight {
        case .red:
            greenLightOpacity = lightIsOff
            redLightOpacity = lightIsOn
            currentLight = .yellow
        case .yellow:
            redLightOpacity = lightIsOff
            yellowLightOpacity = lightIsOn
            currentLight = .green
        case .green:
            greenLightOpacity = lightIsOn
            yellowLightOpacity = lightIsOff
            currentLight = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
