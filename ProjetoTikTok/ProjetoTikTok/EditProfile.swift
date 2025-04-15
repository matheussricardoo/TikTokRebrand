//
//  EditProfile.swift
//  ProjetoTikTok
//
//  Created by Aluno Mack on 09/04/25.
//

import SwiftUI

struct EditProfile: View {
    var body: some View {
        NavigationStack{
            ZStack{
                VStack {
                    Image("SwiftGuy")
                        .resizable(capInsets: EdgeInsets())
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                        .frame(width: 155, height: 155)
                    Text("Change photo")
                    List {
                        Section(header: Text("About you").font(Font.system(size: 13)).foregroundStyle(.gray)) {
                            HStack {
                                Text("Name")
                                Spacer()
                                Button (action: {
                                    // nada
                                }, label: {
                                    Image(systemName: "chevron.forward")
                                        .foregroundStyle(.gray)
                                })
                            }
                            
                            HStack {
                                Text("Username")
                                //.padding(.trailing, 81)
                                
                                Button (action: {
                                    // nada
                                }, label: {
                                    HStack {
                                        Spacer()
                                        Text("Your User")
                                        Image(systemName: "chevron.forward")
                                            .foregroundStyle(.gray)
                                    }
                                })
                            }
                            
                            HStack {
                                Spacer()
                                Text("tiktok.com/@youruser")
                                    .foregroundStyle(.gray)
                                Button (action: {
                                    // nada
                                }, label: {
                                    Image(systemName: "doc.on.doc.fill")
                                        .foregroundStyle(.gray)
                                })
                            }
                            
                            HStack {
                                Text("Pronouns")
                                Spacer()
                                Button (action: {
                                    // nada
                                }, label: {
                                    HStack {
                                        Text("Add pronouns")
                                            .foregroundStyle(.gray)
                                        Image(systemName: "chevron.forward")
                                            .foregroundStyle(.gray)
                                    }
                                })
                            }
                            
                            HStack {
                                Text("Bio")
                                Spacer()
                                Button (action: {
                                    // nada
                                }, label: {
                                    HStack {
                                        Text("Add a bio")
                                            .foregroundStyle(.gray)
                                        Image(systemName: "chevron.forward")
                                            .foregroundStyle(.gray)
                                    }
                                })
                            }
                            
                            HStack {
                                Text("Links")
                                Spacer()
                                
                                Button (action: {
                                    // nada
                                }, label: {
                                    HStack {
                                        Text("Add")
                                            .foregroundStyle(.gray)
                                        Image(systemName: "chevron.forward")
                                            .foregroundStyle(.gray)
                                    }
                                })
                            }
                            
                            HStack {
                                Text("Nonprofit")
                                Spacer()
                                
                                Button (action: {
                                    // nada
                                }, label: {
                                    HStack {
                                        Text("Add nonprofit to your profile")
                                            .foregroundStyle(.gray)
                                        Image(systemName: "chevron.forward")
                                            .foregroundStyle(.gray)
                                    }
                                })
                            }
                            
                            HStack {
                                Text("AI Self")
                                Spacer()
                                
                                Button (action: {
                                    // nada
                                }, label: {
                                    HStack {
                                        Text("Create AI Self")
                                            .foregroundStyle(.gray)
                                        Image(systemName: "chevron.forward")
                                            .foregroundStyle(.gray)
                                    }
                                    
                                })
                            }
                        }                    .listRowBackground(Color("TelaDoFundo"))
                    }
                    .listStyle(.plain)
                    .scrollDisabled(true)
                    .foregroundColor(.black)
                }
            }
            .background(Color("TelaDoFundo"))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .toolbar{
                ToolbarItem(placement: .principal){
                    Text("Edit profile")
                        .bold()
                }
            }
        }
    }
}

struct Preview_EditProfile:PreviewProvider{
    
    static var previews: some View{
        EditProfile()
    }
}
