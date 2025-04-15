import SwiftUI

struct Profile: View {
    @State private var screen = 0
    @State private var types = 0
    @State private var isBold1: Bool = false
    @State private var isBold2: Bool = false
    @State private var isBold3: Bool = false
    @State private var isBold4: Bool = false
    @State private var isBold5: Bool = false

    @State var boldness: Bool = false
    
    func turnGray(_ a1: inout Bool, _ a2: inout Bool, _ a3: inout Bool, _ a4: inout Bool, _ a5: inout Bool) {
        if a1 {
            if a2 || a3 || a4 || a5 {
                a2 = false
                a3 = false
                a4 = false
                a5 = false
            }
        }
    }
    
    var body: some View {
        NavigationStack{
            ZStack{
                VStack (alignment: .center){
                    Image("peixeboi")
                        .resizable(capInsets: EdgeInsets())
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                        .frame(width: 155, alignment: .center)
                        .padding(.top, -45)
                    
                    Text("@Your_user")
                        .font(Font.custom("ArialRoundedMTBold", size: 18))
                    
                        .padding(.bottom)
                    HStack{
                        VStack{
                            Text("2")
                                .font(Font.custom("ArialRoundedMTBold", size: 15))
                                .bold()
                            
                            Text("Following")
                                .font(Font.custom("ArialRoundedMTBold", size: 15))
                                .foregroundStyle(.gray)
                                .frame(width: 78)
                            
                        }
                        VStack{
                            Text("0")
                                .font(Font.custom("ArialRoundedMTBold", size: 15))
                                .bold()
                            
                            Text("Followers")
                                .font(Font.custom("ArialRoundedMTBold", size: 15))
                                .foregroundStyle(.gray)
                                .frame(width: 78)
                            
                        }
                        VStack{
                            Text("1")
                                .font(Font.custom("ArialRoundedMTBold", size: 15))
                                .bold()
                            
                            Text("Likes")
                                .font(Font.custom("ArialRoundedMTBold", size: 15))
                                .foregroundStyle(.gray)
                                .frame(width: 78)
                            
                        }
                    }
                    
                    
                    HStack (spacing: 5){
                        NavigationLink {
                            EditProfile()
                        } label: {
                            Text("Edit profile")
                                .font(Font.custom("ArialRoundedMTBold", size: 15))
                                .foregroundStyle(.black)
                        }
                        .buttonStyle(.bordered)
                        
                        Button (action: {
                            // nada
                        }, label: {
                            Text("Share profile")
                                .font(Font.custom("ArialRoundedMTBold", size: 15))
                                .foregroundStyle(.black)
                        })
                        .buttonStyle(.bordered)
                        
                        Button (action: {
                            // nada
                        }, label: {
                            Image(systemName: "person.badge.plus")
                        })
                        .buttonStyle(.bordered)
                        .foregroundStyle(.black)
                    }
                    .padding(.top, 20)
                    
                    Text("Add your bio here!")
                        .font(Font.custom("ArialRoundedMTBold", size: 15))
                        .padding()
                        .foregroundStyle(.gray)
                    
                    Picker("icon", selection: $screen){
                        Image(systemName: "books.vertical.fill").tag(0)
                        Image(systemName: "lock.doc").tag(1)
                        Image(systemName: "square.and.arrow.down.on.square").tag(2)
                        Image(systemName: "bookmark").tag(3)
                        Image(systemName: "hand.thumbsup.fill").tag(4)
                    }
                    .pickerStyle(.segmented)
                    
                    if(screen == 0) {
                        HStack (spacing: 0){
                            Image("peixeboi")
                                .resizable()
                                .frame(width: 137, height: 182)
                            Image("peixeboi")
                                .resizable()
                                .frame(width: 137, height: 182)
                            Image("peixeboi")
                                .resizable()
                                .frame(width: 137, height: 182)
                        }
                    }else if(screen == 1) {
                        Text("Your private videos")
                            .font(Font.custom("ArialRoundedMTBold", size: 15))
                            .bold()
                            .padding(.top)
                        
                        Text("To make your videos only visible to you, set them to 'Private' in settings.")
                            .font(Font.custom("ArialRoundedMTBold", size: 15))
                            .foregroundStyle(.gray)
                            .multilineTextAlignment(.center)
                            .padding()
                    }else if(screen == 2) {
                        HStack (spacing: 0){
                            Image("peixeboi")
                                .resizable()
                                .frame(width: 137, height: 182)
                            Image("peixeboi")
                                .resizable()
                                .frame(width: 137, height: 182)
                            Image("peixeboi")
                                .resizable()
                                .frame(width: 137, height: 182)
                        }
                    }else if(screen == 3) {
                        ScrollView([.horizontal], showsIndicators: false) {
                            HStack {
                                Button (action: {
                                    isBold1.toggle()
                                }, label: {
//                                    turnGray(&isBold1, &isBold2, &isBold3, &isBold4, &isBold5)
                                    if isBold1 {
                                        Text("Posts")
                                            .font(boldness ? Font.custom("ArialRoundedMTBold", size: 15) : Font.custom("", size: 15))
                                    }
                                    else {
                                        Text("Posts")
                                            .font(Font.custom("ArialRoundedMTBold", size: 15))
                                            .foregroundStyle(.gray)
                                    }
                                })
                                .foregroundColor(.black)
                                
                                
                                Button (action: {
                                    // Return to the last screen
                                }, label: {
                                    Text("Collections 34")
                                        .font(Font.custom("ArialRoundedMTBold", size: 15))
                                    
                                })
                                .foregroundColor(.black)
                                
                                Button (action: {
                                    // Return to the last screen
                                }, label: {
                                    Text("Sounds 12")
                                        .font(Font.custom("ArialRoundedMTBold", size: 15))
                                    
                                    
                                    
                                })
                                .foregroundColor(.black)
                                
                                Button (action: {
                                    // Return to the last screen
                                }, label: {
                                    Text("Effects 1")
                                        .font(Font.custom("ArialRoundedMTBold", size: 15))
                                    
                                })
                                .foregroundColor(.black)
                                
                                Button (action: {
                                    // Return to the last screen
                                }, label: {
                                    Text("Products")
                                        .font(Font.custom("ArialRoundedMTBold", size: 15))
                                    
                                })
                                .foregroundColor(.black)
                            }
                        }
                    }else if(screen == 4) {
                        HStack (spacing: 0){
                            Image("peixeboi")
                                .resizable()
                                .frame(width: 137, height: 182)
                            Image("peixeboi")
                                .resizable()
                                .frame(width: 137, height: 182)
                            Image("peixeboi")
                                .resizable()
                                .frame(width: 137, height: 182)
                        }
                    }
                    
                    Spacer()
                }
            }
            .background(Color("TelaDoFundo"))
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    Button (action: {
                        // Return to the last screen
                    }, label: {
                        Image(systemName: "book")
                    })
                    .foregroundColor(.black)
                }
                ToolbarItem(placement: .principal){
                    HStack {
                        Text("Your User")
                            .font(Font.custom("ArialRoundedMTBold", size: 18))
                            .bold()
                        Image(systemName: "chevron.down")
                            .resizable()
                            .frame(width: 14, height: 9)
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    Button (action: {
                        // Return to the last screen
                    }, label: {
                        Image(systemName: "ellipsis")
                    })
                    .foregroundColor(.black)
                }
            }
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}

enum selectionType {
    case post
    
    
}
