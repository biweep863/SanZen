//
//  Home.swift
//  SanZen
//
//  Created by Luis Benvenuto on 26/07/24.
//

import SwiftUI

struct Home: View {
    var body: some View {
        ScrollView{
            VStack{
                
                ProfileIcon(icon: "person.crop.circle.fill"){
                    print("hi")
                }.position(CGPoint(x: 50.0, y: 30.0))
            
                
                Text("Welcome Back")
                    .font(.system(size: 40, design: .serif))
                    .fontWeight(.heavy)
                    .padding()
                
                Text("Food")
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .background()
                    .cornerRadius(10)
                    .font(.system(size: 25, design: .serif))
                    .fontWeight(.heavy)
                    .padding()
                    .position(CGPoint(x: 70.0, y: 20.0))
                //add a calendar with the resume
                Text("Sleep")
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .background()
                    .cornerRadius(10)
                    .font(.system(size: 25, design: .serif))
                    .fontWeight(.heavy)
                    .padding()
                    .position(CGPoint(x: 70.0, y: 20.0))
                
                Text("Exercise")
                    .frame(width: 120)
                    .background()
                    .cornerRadius(10)
                    .font(.system(size: 25, design: .serif))
                    .fontWeight(.heavy)
                    .padding()
                    .position(CGPoint(x: 80.0, y: 20.0))
                
                Text("Pills")
                    .frame(width: 80)
                    .background()
                    .cornerRadius(10)
                    .font(.system(size: 25, design: .serif))
                    .fontWeight(.heavy)
                    .padding()
                    .position(CGPoint(x: 60.0, y: 20.0))
                
            }
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(Color("Home"))
        
    }
    
}

#Preview {
    Home()
}
