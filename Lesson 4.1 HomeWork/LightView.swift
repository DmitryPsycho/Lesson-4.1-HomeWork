//
//  RedLightView.swift
//  Lesson 4.1 HomeWork
//
//  Created by Psycho on 08.09.2022.
//

import SwiftUI

struct LightView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .opacity(opacity)
            .frame(width: 175, height: 175)
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
    }
}

struct RedLightView_Previews: PreviewProvider {
    static var previews: some View {
        LightView(color: .red, opacity: 0.3)
    }
}
