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
    @State private var imageIndex = 0
    var imageNames: [String] = ["goBook", "cBook", "swiftBook", "javaBook"]
    
    var body: some View {
        NavigationStack{
            ZStack{
                TabView(selection: $imageIndex) {
                    ForEach(0..<imageNames.count, id: \.self) { index in
                        Image("\(imageNames[index])")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
                .frame(height: .infinity) // Step 10: Set Carousel Height
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never)) // Step 11: Customize TabView Style
                .ignoresSafeArea()
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
                        .font(Font.custom("ArialRoundedMTBold", size: 15))
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
                        .font(Font.custom("ArialRoundedMTBold", size: 15))
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
                        .font(Font.custom("ArialRoundedMTBold", size: 15))
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
                        .font(Font.custom("ArialRoundedMTBold", size: 15))
                        .padding(.top, -10)
                        .bold()
                    
                    NavigationLink {
                        BookContent()
                    } label: {
                        Image("goBook")
                            .resizable(capInsets: EdgeInsets())
                            .aspectRatio(contentMode: .fit)
                            .clipShape(Circle())
                            .frame(width: 65, height: 65)
                    }
                }
                .padding(.bottom, -175)
                .frame(maxWidth: .infinity, alignment: .trailing)
                
                HStack{
                    VStack(alignment: .leading) {
                        Spacer()
                        Text("User")
                            .font(Font.custom("ArialRoundedMTBold", size: 18))
                            .bold()
                        Text("My favorite books.")
                            .font(Font.custom("ArialRoundedMT", size: 15))
                            .padding(.bottom, 50)
                    }
                    .padding(.leading, 15)
                    Spacer()
                }
            }
            .background(Color("TelaDoFundo"))
            .toolbar{
                ToolbarItem(placement: .principal){
                    HStack{
                        Button (action: {
                            isBold.toggle()
                        }, label: {
                            if isBold {
                                Text("Explore")
                                    .font(Font.custom("ArialRoundedMTBold", size: 18))
                            }
                            else {
                                Text("Explore")
                                    .font(Font.custom("ArialRoundedMTBold", size: 18))
                            }
                        })
                        .foregroundColor(.black)
                        
                        Button (action: {
                            isBold.toggle()
                        }, label: {
                            if isBold {
                                Text("Following")
                                    .font(Font.custom("ArialRoundedMTBold", size: 18))
                            }
                            else {
                                Text("Following")
                                    .font(Font.custom("ArialRoundedMTBold", size: 18))
                            }
                        })
                        .foregroundColor(.black)
                        
                        Button (action: {
                            isBold.toggle()
                        }, label: {
                            if isBold {
                                Text("For you")
                                .font(Font.custom("ArialRoundedMTBold", size: 18))                            }
                            else {
                                Text("For you")
                                    .font(Font.custom("ArialRoundedMTBold", size: 18))
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
