//
//  BookContent.swift
//  ProjetoTikTok
//
//  Created by Mack Aluno on 15/04/25.
//

import SwiftUI

struct BookContent: View {
    @State private var searchText: String = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    HStack {
                        Image("cBook")
                            .resizable(capInsets: EdgeInsets())
                            .aspectRatio(contentMode: .fit)
                            .clipShape(RoundedRectangle(cornerRadius: 25))
                            .frame(width: 100, height: 100)
                        
                        Text("The C Programming Language")
                            .font(Font.custom("ArialRoundedMTBold", size: 15))
                    }
                    
                    HStack {
                        Image(systemName: "book.fill")
                        Text("272 pages")
                            .font(Font.custom("ArialRoundedMTBold", size: 15))
                            .padding(.trailing, 25)
                        Text("Written by: Brian Kernghan")
                            .font(Font.custom("ArialRoundedMTBold", size: 15))
                    }
                    
                    HStack {
                        Button {
                            
                        } label: {
                            Image("")
                            Text("Add to Apple Books")
                                .foregroundColor(.black)
                        }
                        .buttonStyle(.bordered)

                        Button {
                            
                        } label: {
                            Image(systemName: "bookmark")
                                .foregroundColor(.black)

                            Text("Add to Favorites")
                                .foregroundColor(.black)

                        }
                        .buttonStyle(.bordered)
                    }
                    
                    HStack {
                        Image("cBook")
                            .resizable()
                            .frame(width: 137, height: 182)
                        
                        Image("cBook")
                            .resizable()
                            .frame(width: 137, height: 182)
                        
                        Image("cBook")
                            .resizable()
                            .frame(width: 137, height: 182)
                    }
                    HStack {
                        Image("cBook")
                            .resizable()
                            .frame(width: 137, height: 182)
                        
                        Image("cBook")
                            .resizable()
                            .frame(width: 137, height: 182)
                        
                        Image("cBook")
                            .resizable()
                            .frame(width: 137, height: 182)
                    }
                    HStack {
                        Image("cBook")
                            .resizable()
                            .frame(width: 137, height: 182)
                        
                        Image("cBook")
                            .resizable()
                            .frame(width: 137, height: 182)
                        
                        Image("cBook")
                            .resizable()
                            .frame(width: 137, height: 182)
                    }
                }
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("TelaDoFundo"))
            .toolbar {
                ToolbarItem(placement: .principal) {
                    TextField("Title", text: $searchText)
                        .textFieldStyle(.roundedBorder)
                        .frame(width: 220)
                }
                ToolbarItem (placement: .navigationBarTrailing){
                    Image(systemName: "arrowshape.turn.up.right")
                }
            }
            .toolbar(.hidden, for: .tabBar)
        }
    }
}

struct BookContent_Previews: PreviewProvider {
    static var previews: some View {
        BookContent()
    }
}
