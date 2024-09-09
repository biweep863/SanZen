//
//  ProfileIcon.swift
//  SanZen
//
//  Created by Luis Benvenuto on 31/07/24.
//

import SwiftUI

struct ProfileIcon: View {
    
    let icon: String
    let action: () -> Void
    
    var body: some View {
        Button{
            action()
        }label: {
            Image(systemName: icon)
                .foregroundColor(Color.black)
                .frame(width: 40, height: 40)
                .font(.system(size: 40))
                
        }
        
        
    }
}

#Preview {
    ProfileIcon(icon: "person.crop.circle.fill"){
        print("hi")
    }
}
