//
//  z3_1_PanelView.swift
//  Semestr_VI_ZadaniaLabSWIFT
//
//  Created by Paweł Jan Tłusty on 09/04/2024.
//

import SwiftUI

struct z3_1_PanelView: View {
    @Binding var ileRazy: Int
    
    var body: some View {
        VStack {
            Text("Wciśnij przycisk")
            Button(action: {
                self.ileRazy += 1
            }) {
                Text("Wciśnij")
            }
            Text("Wciśnięto \(ileRazy) razy!")
        }
    }
}


#Preview {
    z3_1_PanelView(ileRazy: .constant(0))
}
