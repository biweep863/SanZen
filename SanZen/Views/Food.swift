//
//  Food.swift
//  SanZen
//
//  Created by Luis Benvenuto on 28/06/24.
//

import SwiftUI

struct Comida: Identifiable {
    let id = UUID()
    var nombre: String
    var calorias: Int
}

struct Food: View {
    
    @State private var comidas: [Comida] = []
    @State private var nombreComida: String = ""
    @State private var caloriasComida: String = ""
    
    var body: some View {
        
        NavigationView{
            VStack{
                ProfileIcon(icon: "person.crop.circle.fill"){
                    print("hi")
                }.position(CGPoint(x: 50.0, y: 30.0))
                HStack{
                    Text("DAY")
                        .font(.system(size: 60, design: .serif))
                        .fontWeight(.heavy)
                        .padding()
                    
                    Text("(Calories)")
                        .font(.system(size: 15, design: .serif))
                        .fontWeight(.heavy)
                        .padding()
                }
                .position(CGPoint(x: 200.0, y: -140.0))
                //List of items
                VStack {
                    List {
                        ForEach(comidas) { comida in
                            HStack {
                                TextFood(food: comida.nombre)
                                Spacer()
                                NumberFood(calories: "\(comida.calorias) cal")
                            }
                        }
                    }
                    
                    
                    HStack {
                        TextField("Nombre de la comida", text: $nombreComida)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        TextField("Calorías", text: $caloriasComida)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .keyboardType(.numberPad)
                        Button(action: agregarComida) {
                            Text("Agregar")
                        }
                    }
                    .padding()
                    
                }
                .frame(height: 200)
                
            }
            .background(Color.white)
            
        }
        
       
        
    }
    
    func agregarComida() {
        if let calorias = Int(caloriasComida), !nombreComida.isEmpty {
            let nuevaComida = Comida(nombre: nombreComida, calorias: calorias)
            comidas.append(nuevaComida)
            nombreComida = ""
            caloriasComida = ""
        }
        
    }
}


#Preview {
    Food()
}
