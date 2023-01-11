//
//  CircleView.swift
//  TrafficLightSwiftUI
//
//  Created by Руслан Мингалиев on 11.01.2023.
//

import SwiftUI

struct CircleView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .opacity(opacity)
            .frame(width: 150, height: 150)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)

    }
}

//struct CircleView_Previews: PreviewProvider {
//    static var previews: some View {
//        CircleView(color: .red, opacity: 0.5 )
//    }
//}
