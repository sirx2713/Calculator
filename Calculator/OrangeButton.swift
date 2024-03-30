//
//  OrangeButton.swift
//  Calculator
//
//  Created by Tafadzwa Alexander Razaro on 2024/03/30.
//

import SwiftUI

struct OrangeButton: View {
    var label:String
    var body: some View {
        Button(action: {
            
        }, label: {
            ZStack{
                Circle()
                    .fill(
                        LinearGradient(colors: [.orange, .yellow], startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                Text(label)
                    .font(.title)
                    .scaleEffect(2)
                    .foregroundColor(.white)
            }.frame(width: 80, height: 80)
        })
    }
}

#Preview {
    OrangeButton(label: "+")
}
