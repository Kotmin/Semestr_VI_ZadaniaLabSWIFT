//
//  z3_1.swift
//  Semestr_VI_ZadaniaLabSWIFT
//
//  Created by Paweł Jan Tłusty on 09/04/2024.
//

import SwiftUI

struct z3_1: View {
    @State private var ileRazy:Int = 0
    
    var body: some View {
        Text("Zadanie 3.1")
                        .font(.largeTitle)                        .padding(.top)
        z3_1_PanelView(ileRazy: $ileRazy)
    }
}

#Preview {
    z3_1()
}
