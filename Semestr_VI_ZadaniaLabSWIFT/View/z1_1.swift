//
//  z1_1.swift
//  Semestr_VI_ZadaniaLabSWIFT
//
//  Created by Paweł Jan Tłusty on 09/04/2024.
//

import SwiftUI

struct z1_1: View {
    @State private var dzien: String = ""
    @State private var dzienWybrany: String = ""
    
    
    var body: some View {
        
        Text("Zadanie 1.1")
                        .font(.largeTitle)                        .padding(.top)
                    
        
        VStack(spacing:20){
            
            Text("Podaj wybrany dzień tygodnia: ")
            TextField("Wpisz dzień tygodnia", text: $dzien).frame(maxWidth: 190)
            Button(action: { dzienWybrany = dzien } , label: {
                Text("Zatwierź wybór")
            })
            
            Text("Wybrano: \(dzienWybrany)")
        }.padding(10)
    }
}

#Preview {
    z1_1()
}
