//
//  TextFood.swift
//  SanZen
//
//  Created by Luis Benvenuto on 31/07/24.
//

import SwiftUI

struct TextFood: View {
    @State var randColor = Color("Home")
    var food: String
    var body: some View {
        
        ZStack{
            
            Rectangle()
                .fill()
                .opacity(0.5)
                .frame(width: 200, height: 50)
                .foregroundColor(self.randColor)
                .gesture(TapGesture()
                    .onEnded{self.newColor()})
                .cornerRadius(10.0)
            Text(food)
                .font(.system(size: 30, weight: .semibold, design: .serif))
                .foregroundColor(Color.black)
        }
    }
    
    func newColor(){
        let rand1 = Double.random(in: 100...255)
        let rand2 = Double.random(in: 100...255)
        let rand3 = Double.random(in: 100...255)
        let randColor = Color(red: rand1/255, green: rand2/255, blue:rand3/255)
        self.randColor = randColor
    }
}

#Preview {
    TextFood(food: "Pizza")
}
