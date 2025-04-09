//
//  ContentView.swift
//  ProjetoTikTok
//
//  Created by Aluno Mack on 08/04/25.
//

import SwiftUI

//struct Ocean: Identifiable {
//    let name: String
//}

struct ContentView: View {
    
    @State var lista: [String] = ["a","b","c"]
    
    init(){
        UITableView.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        TabView {
            Profile()
                .tabItem {
                    Label("Menu", systemImage: "person.crop.circle")
                }
        }
    }
}

#Preview {
    ContentView()
}

