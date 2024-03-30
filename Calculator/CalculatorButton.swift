//
//  CalculatorButton.swift
//  Calculator
//
//  Created by Tafadzwa Alexander Razaro on 2024/03/30.
//

import SwiftUI

struct CalculatorButton: View {
    
    var label:String
    //var color:Color
    
    var body: some View {
        Button(action: {
            
        }, label: {
            ZStack{
                Circle()
                    .fill(
                        LinearGradient(colors: [.gray, .black], startPoint: .topLeading, endPoint: .bottomTrailing)
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
    CalculatorButton(label: "1")
        .previewLayout(.fixed(width: 100, height: 100))
}
