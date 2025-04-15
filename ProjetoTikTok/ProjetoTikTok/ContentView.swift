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
            Home()
                .tabItem {
                    Label("Home", systemImage: "books.vertical.fill")
                }
            Profile()
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle")
                }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

