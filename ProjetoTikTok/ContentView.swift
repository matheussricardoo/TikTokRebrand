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
            
            Text("Oi >.<")
                .tabItem {
                    Label("Friends", systemImage: "person.2.fill")
                }
            
            Text("Oi >.<")
                .tabItem {
                    Label("", systemImage: "plus.rectangle.fill.on.rectangle.fill")
                }
            
            Text("Oi >.<")
                .tabItem {
                    Label("Inbox", systemImage: "ellipsis.message.fill")
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

