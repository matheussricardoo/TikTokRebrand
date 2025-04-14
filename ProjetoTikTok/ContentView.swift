//
//  ContentView.swift
//  ProjetoTikTok
//
//  Created by Aluno Mack on 08/04/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Profile()
                .tabItem {
                    Label("Menu", systemImage: "person.crop.circle")
                }
            Home()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

