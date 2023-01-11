//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Руслан Мингалиев on 11.01.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var currentLight = 1
    @State private var lightRed = 0.5
    @State private var lightYellow = 0.5
    @State private var lightGreen = 0.5
    @State private var buttomTitle = "Start"


    var body: some View {
        VStack {
            CircleView(color: .red, opacity: lightRed)
            CircleView(color: .yellow, opacity: lightYellow)
            CircleView(color: .green, opacity: lightGreen)
          
            Button(action: changeColor) {
                Text("\(buttomTitle)")
                    .font(.title)
                    .foregroundColor(.black)
            }
            .padding()
        }
    }
      
    private func changeColor () {
        currentLight += 1
        buttomTitle = "Next"
        switch currentLight {
        case 1:
            lightRed = 1
            lightYellow = 0.5
            lightGreen = 0.5
        case 2:
            lightRed = 0.5
            lightYellow = 1
            lightGreen = 0.5
        case 3:
            lightRed = 0.5
            lightYellow = 0.5
            lightGreen = 1
            currentLight = 0
        default:
            break
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
