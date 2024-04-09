//
//  z1_2.swift
//  Semestr_VI_ZadaniaLabSWIFT
//
//  Created by Paweł Jan Tłusty on 09/04/2024.
//

import SwiftUI

struct z1_2: View {
    @State private var dzien: String = ""
    @State private var dzienWybrany: String = ""
    let dzienPoprawny = ["poniedziałek", "wtorek", "środa", "czwartek", "piątek", "sobota", "niedziela"]
    
    var body: some View {
        
        
        Text("Zadanie 1.2")
                        .font(.largeTitle)                        .padding(.top)

        
        VStack {
            Text("Podaj wybrany dzień tygodnia: ")
                .foregroundColor(.blue)
                .rotation3DEffect(.degrees(45), axis: (x: 1, y: 0, z: 0))
                .padding()
            
            TextField("Wpisz dzień tygodnia", text: $dzien)
                .frame(maxWidth: 190)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button(action: {
                if dzienPoprawny.contains(dzien.lowercased()) {
                    dzienWybrany = dzien
                } else {
                    dzienWybrany = "Niepoprawny dzień"
                }
            }) {
                Text("Zatwierdź wybór")
                    .foregroundColor(.white)
            }
            .padding()
            .background(Color.black)
            .cornerRadius(5)
            
            Text("Wybrano: \(dzienWybrany)")
                .padding()
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(10)
    }
    }


#Preview {
    z1_2()
}
