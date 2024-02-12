//
//  Login Screen.swift
//  testapp
//
//  Created by Admin on 24/01/24.
//

import SwiftUI


struct Login_Screen: View {
    @StateObject var root = Tabroot()
    @State var signuppage : Bool
    @State private var user = ""
    @State private var password = ""
    @State private var wronguser = 0
    @State private var Wrongpass = 0
    @State private var loggedin = false
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.blue
                    .ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.15))
                Circle()
                    .scale(1.5)
                    .foregroundColor(.white)
                VStack {
                    Text("WAREHOUSING")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.red)
                        .fontWeight(.heavy)
                        .padding()
                    Text("Login")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    TextField("Username",text : $user)
                        .padding()
                        .frame(width:300,height :50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width : CGFloat(wronguser))
                    // To Create a red outline when the user enters a wrong username
                    SecureField("Password",text : $password)
                        .padding()
                        .frame(width:300,height :50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width : CGFloat(Wrongpass))
                    // To Create a red outline when the user enters a wrong password
                    Button("Login"){
                        auth(username: user, password: password)
                    }
                    .foregroundColor(.white)
                    .frame(width:300,height :50)
                    .background(Color.blue)
                    .cornerRadius(10)
                    
                    NavigationLink(destination: TabView(selection: $root.screen){
                        Home_Screen()
                            .badge(12)
                            .tag(Screen.home)
                            .environmentObject(root)
                            .tabItem {
                                Label("Home",systemImage : "house.fill")
                                //.font(.largeTitle)
                                //.resizable()
                                    .scaledToFit()
                                    .frame(width:24,height:24)
                            }
                        Card_Screen()
                            .badge(1)
                            .tag(Screen.card)
                            .environmentObject(root)
                            .tabItem {
                                Label("Card",systemImage : "menucard.fill")
                            }
                        Settings_Page()
                            .tag(Screen.settings)
                            .environmentObject(root)
                            .tabItem{
                                Label("Settings",systemImage : "gearshape.fill")
                            }
                    },isActive : $loggedin){
                        EmptyView()
                    }
                    
                    HStack (alignment:.bottom){
                        Spacer()
                        Text("Don't Have an id ?|")
                            .foregroundColor(.blue)
                        //.font(.caption)
                        NavigationLink(destination :Sign_Up_Page(),isActive: $signuppage){EmptyView()}
                        Button{
                            action : do {
                                self.signuppage = true
                            }
                        }
                        label : {
                            Text("Sign Up")
                                .foregroundColor(.red)
                        }
                        
                    }.padding()
                }
            }.navigationBarHidden(true)
            
        }
    }
    
    func auth( username : String, password : String){
        if username.lowercased() == "dhruv"{
            wronguser = 0
            if password.lowercased() == "123"{
                Wrongpass = 0
                loggedin = true
            }else{
                Wrongpass = 2
            }
            
            
        }else {
            wronguser = 2
        }
    }
    func store(){
        
    }
}


struct Login_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Login_Screen(signuppage: false)
    }
}
