//
//  ContentView.swift
//  Semestr_VI_ZadaniaLabSWIFT
//
//  Created by Paweł Jan Tłusty on 09/04/2024.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.navigate) private var navigate
    
    
    @State private var lab1Collapsed: Bool = false
    @State private var lab3Collapsed: Bool = false
    
    var body: some View {
        VStack {

            HeaderView()
            
            SectionView(isCollapsed: $lab1Collapsed, sectionTitle: "Laboratorium 1"){
                HStack{
                    
                    Button(action: { navigate(.z1_1) }, label: {
                        Text("1.1")
                    })
//                    .padding()
//                    .foregroundColor(.white)
//                    .background(.black)
//                    .cornerRadius(8)
//                    .overlay(
//                        RoundedRectangle(cornerRadius: 8)
//                            .stroke(Color.black, lineWidth: 1)
//                    )
                    Button(action: { navigate(.z1_2) }, label: {
                        Text("1.2")
                    })
                    Button(action: { navigate(.z1_5) }, label: {
                        Text("1.5")
                    })
                    
                }
                
            }
            
            SectionView(isCollapsed: $lab3Collapsed, sectionTitle: "Laboratorium 3"){
                HStack{
                    
                    Button(action: { navigate(.z3_1) }, label: {
                        Text("3.1")
                    })
                    
                }
                
            }
            FooterView(creator: "Paweł Jan Tłusty")
        }
        .padding()
    }
}


struct HeaderView: View {
    var body: some View {
        Image(systemName: "cat")
            .imageScale(.large)
            .foregroundStyle(.tint)
        Text("Parę zadań")
    }
}

struct SectionView<Content: View>: View {
    @Binding var isCollapsed: Bool
    let sectionTitle: String
    @ViewBuilder var content: Content
    
    var body: some View {
        VStack {
            HStack {
                Text(sectionTitle)
                    .foregroundColor(.gray)
                    .font(.headline)
                Spacer()
                Button(action: { isCollapsed.toggle() }) {
                    Image(systemName: isCollapsed ? "chevron.right" : "chevron.down")
                        .foregroundColor(.gray)
                }
            }.padding()
            
            if !isCollapsed {
                content
            }
        }

    }
}



struct FooterView: View {
    var creator: String
    
    var body: some View {
        VStack {
            Text("Created by:")
                .foregroundColor(.black)
                .font(.caption)
            Text(creator)
                .foregroundColor(.black)
                .font(.headline)
        }
        .frame(maxWidth: .infinity)
        .padding()
    }
}

#Preview {
    ContentView()
}
