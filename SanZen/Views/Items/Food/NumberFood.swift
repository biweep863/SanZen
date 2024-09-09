//
//  NumberFood.swift
//  SanZen
//
//  Created by Luis Benvenuto on 31/07/24.
//

import SwiftUI

struct NumberFood: View {
    var calories: String
    
    var body: some View {
        ZStack{

            Rectangle()
                .fill()
                .opacity(0.5)
                .frame(width: 100, height: 50)
                .foregroundColor(Color.black)
                .frame(width: 95, height:45)
                .overlay(Rectangle().inset(by: 2).fill(Color.white))
            Text(calories)
                .font(.system(size: 30, weight: .semibold, design: .serif))
                .foregroundColor(Color.black)
            
        }
    }
}

#Preview {
    NumberFood(calories: "10")
}
