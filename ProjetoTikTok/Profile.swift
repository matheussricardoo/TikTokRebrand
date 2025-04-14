import SwiftUI

struct Profile: View {
    @State private var screen = 0
    @State private var types = 0
    @State private var isBold: Bool = false
    
    var body: some View {
        NavigationStack{
            ZStack{
                VStack (alignment: .center){
                    Image("SwiftGuy")
                        .resizable(capInsets: EdgeInsets())
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                        .frame(width: 155, alignment: .center)
                        .padding(.top, -45)
                    
                    Text("@Your_user")
                        .padding(.bottom)
                    HStack{
                        VStack{
                            Text("2")
                                .bold()
                                .font(Font.system(size: 16))
                            
                            Text("Following")
                                .foregroundStyle(.gray)
                                .frame(width: 78)
                                .font(Font.system(size: 14))
                            
                        }
                        VStack{
                            Text("0")
                                .bold()
                                .font(Font.system(size: 16))
                            
                            Text("Followers")
                                .foregroundStyle(.gray)
                                .frame(width: 78)
                                .font(Font.system(size: 14))
                            
                        }
                        VStack{
                            Text("1")
                                .bold()
                                .font(Font.system(size: 16))
                            
                            Text("Likes")
                                .foregroundStyle(.gray)
                                .frame(width: 78)
                                .font(Font.system(size: 14))
                            
                        }
                    }
                    
                    
                    HStack (spacing: 5){
                        NavigationLink {
                            EditProfile()
                        } label: {
                            Text("Edit profile")
                                .foregroundStyle(.black)
                        }
                        .buttonStyle(.bordered)
                        
                        Button (action: {
                            // nada
                        }, label: {
                            Text("Share profile")
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
                        .font(Font.system(size: 15))
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
                            Image("SwiftGuy")
                                .resizable()
                                .frame(width: 137, height: 182)
                            Image("SwiftGuy")
                                .resizable()
                                .frame(width: 137, height: 182)
                            Image("SwiftGuy")
                                .resizable()
                                .frame(width: 137, height: 182)
                        }
                    }else if(screen == 1) {
                        Text("Your private videos")
                            .bold()
                            .padding(.top)
                        Text("To make your videos only visible to you, set them to 'Private' in settings.")
                            .foregroundStyle(.gray)
                            .multilineTextAlignment(.center)
                            .padding()
                    }else if(screen == 2) {
                        HStack (spacing: 0){
                            Image("SwiftGuy")
                                .resizable()
                                .frame(width: 137, height: 182)
                            Image("SwiftGuy")
                                .resizable()
                                .frame(width: 137, height: 182)
                            Image("SwiftGuy")
                                .resizable()
                                .frame(width: 137, height: 182)
                        }
                    }else if(screen == 3) {
                        ScrollView([.horizontal], showsIndicators: false) {
                            HStack {
                                Button (action: {
                                    isBold.toggle()
                                }, label: {
                                    if isBold {
                                        Text("Posts 15")
                                            .bold()
                                    }
                                    else {
                                        Text("Posts 15")
                                    }
                                })
                                .foregroundColor(.black)
                                
                                
                                Button (action: {
                                    // Return to the last screen
                                }, label: {
                                    Text("Collections 34")
                                })
                                .foregroundColor(.black)
                                
                                Button (action: {
                                    // Return to the last screen
                                }, label: {
                                    Text("Sounds 12")
                                })
                                .foregroundColor(.black)
                                
                                Button (action: {
                                    // Return to the last screen
                                }, label: {
                                    Text("Effects 1")
                                })
                                .foregroundColor(.black)
                                
                                Button (action: {
                                    // Return to the last screen
                                }, label: {
                                    Text("Products")
                                })
                                .foregroundColor(.black)
                            }
                        }
                        
                    }else if(screen == 4) {
                        HStack (spacing: 0){
                            Image("SwiftGuy")
                                .resizable()
                                .frame(width: 137, height: 182)
                            Image("SwiftGuy")
                                .resizable()
                                .frame(width: 137, height: 182)
                            Image("SwiftGuy")
                                .resizable()
                                .frame(width: 137, height: 182)
                        }
                    }
                    
                    Spacer()
                }
            }
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
