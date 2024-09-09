//
//  ContentView.swift
//  SanZen
//
//  Created by Luis Benvenuto on 28/06/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Home()
                .tabItem() {
                    Image(systemName: "square.stack.3d.up")
                    Text("Home")
                }
            Food()
                .tabItem {
                    Image(systemName: "flame.fill")
                    Text("Food")
                }
            Sleep()
                .tabItem {
                    Image(systemName: "bed.double.fill")
                    Text("counter")
                }
            Exercise()
                .tabItem {
                    Image(systemName: "headphones")
                    Text("Exercise")
                }
            Pills()
                .tabItem {
                    Image(systemName: "bandage")
                    Text("Pills")
                }
        }
    }
}

#Preview {
    ContentView()
}
