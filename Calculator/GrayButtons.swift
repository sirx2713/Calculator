//
//  GrayButtons.swift
//  Calculator
//
//  Created by Tafadzwa Alexander Razaro on 2024/03/30.
//

import SwiftUI

struct GrayButtons: View {
    var label:String
    
    @Binding var pressedKey:Int
    
    var body: some View {
        Button(action: {
            
        }, label: {
            ZStack{
                Circle()
                    .fill(
                        LinearGradient(colors: [.gray, .white], startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                Text(label)
                    .font(.title)
                    .scaleEffect(2)
                    .foregroundColor(.black)
            }.frame(width: 80, height: 80)
        })
    }
    
    func pressed(){
        
    }
}

#Preview {
    GrayButtons(label: "C", pressedKey: Binding.constant(0))
}
