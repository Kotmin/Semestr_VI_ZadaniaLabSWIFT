//
//  Semestr_VI_ZadaniaLabSWIFTApp.swift
//  Semestr_VI_ZadaniaLabSWIFT
//
//  Created by Paweł Jan Tłusty on 09/04/2024.
//

import SwiftUI

enum Route:Hashable {
    case home
    case z1_1
    case z1_2
    case z1_5
    case z2_1
    case z2_2
    case z2_4
    case z3_1
    case z3_2
    
    
}

struct NavigateEnvironmentKey: EnvironmentKey {
    static var defaultValue: (Route) -> Void = { _ in }
}

extension EnvironmentValues {
    var navigate: (Route) -> Void {
        get { self[NavigateEnvironmentKey.self] }
        set { self[NavigateEnvironmentKey.self] = newValue}
    }
}

@main
struct Semestr_VI_ZadaniaLabSWIFTApp: App {
    
    @State private var routes: [Route] = []
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $routes){
                ContentView().navigationDestination(for: Route.self) {
                    route in switch route {
                    case .home:
                        ContentView()
                    case .z1_1:
                        z1_1()
                    case .z1_2:
                        z1_2()
                    case .z1_5:
                        z1_5()
                    case .z2_1:
                        ContentView()
                    case .z2_2:
                        ContentView()
                    case .z2_4:
                        ContentView()
                    case .z3_1:
                        ContentView()
                    case .z3_2:
                        ContentView()
                    }
                }
                
            }.environment(\.navigate) { route in routes.append(route)}
        }
    }
}
