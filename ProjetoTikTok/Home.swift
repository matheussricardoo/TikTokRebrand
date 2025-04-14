//
//  Home.swift
//  ProjetoTikTok
//
//  Created by Mack Aluno on 14/04/25.
//

import SwiftUI

struct Home: View {
    @State private var selected = 0
    @State private var isBold = false
    
    var body: some View {
        NavigationStack{
            ZStack{
                Image("goBook")
                    .resizable()
                    .frame(height: 850)
                    .padding(.top, -135)
                
                VStack (spacing: 10){
                    ZStack {
                        Button (action: {
                            // Return to the last screen
                        }, label: {
                            Image("SwiftGuy")
                                .resizable(capInsets: EdgeInsets())
                                .aspectRatio(contentMode: .fit)
                                .clipShape(Circle())
                                .frame(width: 65, height: 65)
                        })
                        
                        
                        Image(systemName: "plus.circle.fill")
                            .padding(.top, 30)
                            .foregroundColor(.red)
                            .font(.system(size: 21))
                    }
                    
                    
                    Button (action: {
                        // Return to the last screen
                    }, label: {
                        Image(systemName: "heart.fill")
                            .foregroundColor(Color(white: 0.9, opacity: 0.8))
                            .font(.system(size: 35))
                    })
                    Text("222")
                        .padding(.top, -10)
                        .bold()
                    
                    
                    Button (action: {
                        // Return to the last screen
                    }, label: {
                        Image(systemName: "text.bubble.fill")
                            .foregroundColor(Color(white: 0.9, opacity: 0.8))
                            .font(.system(size: 35))
                        
                    })
                    Text("37")
                        .padding(.top, -10)
                        .bold()
                    
                    
                    
                    Button (action: {
                        // Return to the last screen
                    }, label: {
                        Image(systemName: "bookmark.fill")
                            .foregroundColor(Color(white: 0.9, opacity: 0.8))
                            .font(.system(size: 35))
                        
                    })
                    Text("15")
                        .padding(.top, -10)
                        .bold()
                    
                    
                    Button (action: {
                        // Return to the last screen
                    }, label: {
                        Image(systemName: "paperplane.fill")
                            .foregroundColor(Color(white: 0.9, opacity: 0.8))
                            .font(.system(size: 35))
                        
                    })
                    Text("32")
                        .padding(.top, -10)
                        .bold()
                    
                    Button (
                        action: {
                            // Return to the last screen
                        }, label: {
                            Image("goBook")
                                .resizable(capInsets: EdgeInsets())
                                .aspectRatio(contentMode: .fit)
                                .clipShape(Circle())
                                .frame(width: 65, height: 65)
                        }
                    )
                    
                }
                .padding(.bottom, -175)
                .frame(maxWidth: .infinity, alignment: .trailing)
                
                HStack{
                    VStack(alignment: .leading) {
                        Spacer()
                        Text("User")
                            .bold()
                        Text("Meu livro favorito (Programming in C)")
                            .padding(.bottom, 50)
                    }
                    .padding(.leading, 15)
                    Spacer()
                }
            }
            .toolbar{
                ToolbarItem(placement: .principal){
                    HStack{
                        Button (action: {
                            isBold.toggle()
                        }, label: {
                            if isBold {
                                Text("Explore")
                                    .bold()
                            }
                            else {
                                Text("Explore")
                            }
                        })
                        .foregroundColor(.black)
                        
                        Button (action: {
                            isBold.toggle()
                        }, label: {
                            if isBold {
                                Text("Following")
                                    .bold()
                            }
                            else {
                                Text("Following")
                            }
                        })
                        .foregroundColor(.black)
                        
                        Button (action: {
                            isBold.toggle()
                        }, label: {
                            if isBold {
                                Text("For you")
                                    .bold()
                            }
                            else {
                                Text("For you")
                            }
                        })
                        .foregroundColor(.black)
                    }}
                
                ToolbarItem(placement: .navigationBarLeading){
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "book")
                            .foregroundStyle(.black)
                    })
                }
                
                ToolbarItem(placement: .navigationBarTrailing){
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "magnifyingglass")
                            .foregroundStyle(.black)
                    })
                }
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
