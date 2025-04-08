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
        NavigationStack{
            ZStack{
                Color.white.ignoresSafeArea()
                VStack {
                    Image(.swiftGuy)
                        .resizable(capInsets: EdgeInsets())
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                        .frame(width: 155, height: 155)
                    Text("Change photo")
                    Form {
                        Section(header: Text("About you")) {
                            HStack {
                                Text("Name")
                                    .padding(.trailing, 247)
                                Button (action: {
                                    // nada
                                }, label: {
                                    Image(systemName: "chevron.forward")
                                })
                            }
                            
                            HStack {
                                Text("Username")
                                    .padding(.trailing, 131)
                                
                                Button (action: {
                                    // nada
                                }, label: {
                                    HStack {
                                        Text("Your User")
                                        Image(systemName: "chevron.forward")
                                    }
                                })
                            }
                            
                            HStack {
                                Text("tiktok.com/@youruser")
                                    .padding(.leading, 117)
                                Button (action: {
                                    // nada
                                }, label: {
                                    Image(systemName: "doc.on.doc.fill")
                                })
                            }
                            
                            HStack {
                                Text("Pronouns")
                                    .padding(.trailing, 90)
                                
                                Button (action: {
                                    // nada
                                }, label: {
                                    HStack {
                                        Text("Add pronouns")
                                        Image(systemName: "chevron.forward")
                                    }
                                })
                            }
                            
                            HStack {
                                Text("Bio")
                                    .padding(.trailing, 131)
                                
                                Button (action: {
                                    // nada
                                }, label: {
                                    HStack {
                                        Text("Add a bio")
                                        Image(systemName: "chevron.forward")
                                    }
                                })
                            }
                            
                            HStack {
                                Text("Links")
                                    .padding(.trailing, 131)
                                
                                Button (action: {
                                    // nada
                                }, label: {
                                    HStack {
                                        Text("Add")
                                        Image(systemName: "chevron.forward")
                                    }
                                })
                            }
                            
                            HStack {
                                Text("Nonprofit")
                                    .padding(.trailing, 131)
                                
                                Button (action: {
                                    // nada
                                }, label: {
                                    HStack {
                                        Text("Add nonprofit to your profile")
                                        Image(systemName: "chevron.forward")
                                    }
                                })
                            }
                            
                            HStack {
                                Text("AI Self")
                                    .padding(.trailing, 131)
                                
                                Button (action: {
                                    // nada
                                }, label: {
                                    HStack {
                                        Text("Create AI Self")
                                        Image(systemName: "chevron.forward")
                                    }
                                })
                            }
                        }
                    }
                    .scrollDisabled(true)
                    .foregroundColor(.black)
                    .background(Color.white)
                }
            }
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    Button (action: {
                        // Return to the last screen
                    }, label: {
                        Image(systemName: "chevron.backward")
                    })
                    .foregroundColor(.black)
                }
                ToolbarItem(placement: .principal){
                    Text("Edit profile")
                        .bold()
                }
            }
        }
        
    }
}

#Preview {
    ContentView()
}

