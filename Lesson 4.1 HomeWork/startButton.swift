//
//  startButton.swift
//  Lesson 4.1 HomeWork
//
//  Created by Psycho on 10.09.2022.
//

import SwiftUI

struct startButton: View {
    
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .foregroundColor(.white)
        }
        .padding()
        .frame(width: 200, height: 80)
        .background(.blue)
        .overlay(
            RoundedRectangle(cornerRadius: 20).stroke(Color.white, lineWidth: 5)
        )
        
    }
}

struct startButton_Previews: PreviewProvider {
    static var previews: some View {
        startButton(title: "START", action: { })
    }
}
