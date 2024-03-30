//
//  CalculatorRow.swift
//  Calculator
//
//  Created by Tafadzwa Alexander Razaro on 2024/03/30.
//

import SwiftUI

let columnCount = 3

struct CalculatorRow: View {
    
    //var labels = ["", "", "", ""]
    // var color: [Color] = [.gray, .gray, .gray, .orange]
    @State var pressedKey = 0
    
    var body: some View {
        Spacer()
        HStack {
            Spacer()
            Text(String(pressedKey))
                .font(.largeTitle)
                .scaleEffect(4)
                .fontWeight(.regular)
        }.padding(.horizontal, 80)
        Spacer()
        VStack {
            HStack(spacing: 10){
                GrayButtons(label: "C", pressedKey: $pressedKey)
                GrayButtons(label: "+/-", pressedKey: $pressedKey)
                GrayButtons(label: "%", pressedKey: $pressedKey)
                OrangeButton(label: "/")
            }
            HStack(spacing: 10){
                CalculatorButton(label: "7")
                CalculatorButton(label: "8")
                CalculatorButton(label: "9")
                OrangeButton(label: "x")
                
            }
            HStack(spacing: 10){
                CalculatorButton(label: "4")
                CalculatorButton(label: "5")
                CalculatorButton(label: "6")
                OrangeButton(label: "-")
                
            }
            HStack(spacing: 10){
                CalculatorButton(label: "1")
                CalculatorButton(label: "2")
                CalculatorButton(label: "3")
                OrangeButton(label: "+")
                
            }
            HStack(spacing: 10){
                CalculatorButton(label: "")
                CalculatorButton(label: "0")
                CalculatorButton(label: ".")
                OrangeButton(label: "=")
                
            }
        }
    }
}

#Preview {
    CalculatorRow()
}
