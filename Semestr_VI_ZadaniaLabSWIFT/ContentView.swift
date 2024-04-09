//
//  ContentView.swift
//  Semestr_VI_ZadaniaLabSWIFT
//
//  Created by Paweł Jan Tłusty on 09/04/2024.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.navigate) private var navigate
    
    var body: some View {
        VStack {
            Image(systemName: "cat")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Pare zadań")
            
            Button(action: { navigate(.z1_1) }, label: {
                Text("Z_1_1")
            })
            Button(action: { navigate(.z1_2) }, label: {
                Text("Z_1_2")
            })
            Button(action: { navigate(.z1_5) }, label: {
                Text("Z_1_5")
            })
            Button(action: { navigate(.z3_1) }, label: {
                Text("Z_3_1")
            })
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
