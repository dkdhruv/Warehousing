//
//  ContentView.swift
//  testapp for Warehousing
//
//  Created by Dhruv Khanna on 15/01/24.
//

import SwiftUI

struct Card: View {
    var body: some View {
        
        ZStack {
            Color(red: 0, green: /*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/, blue:/*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/)
                .ignoresSafeArea()
            
            VStack(alignment: .leading) {
                Text("Price/Rent")
                    .font(.title)
                Image("Image")
                    .resizable()
                    .cornerRadius(/*@START_MENU_TOKEN@*/26.0/*@END_MENU_TOKEN@*/)
                    .aspectRatio(contentMode: .fit)
                    .padding(.all)
                HStack {
                    Text("Warehouse Name")
                        .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                    Spacer()
                    VStack{
                        HStack{
                            Image(systemName: "star.fill")
                            // 1 Star
                            Image(systemName: "star.fill")
                            // 2 Stars
                            Image(systemName: "star.fill")
                            // 3 Stars
                            Image(systemName: "star.fill")
                            // Half Star
                            Image(systemName: "star.leadinghalf.filled")
                            
                        }.foregroundColor(Color.yellow)
                        Text("(Reviews 36)")
                    }
                    
                    Spacer()
                }
                
                Text("This is the description of this particular warehouse that will iclude details like address,company name etc.")
                HStack(alignment: .center){
                    Spacer()
                    Image(systemName: "externaldrive.fill.badge.wifi")
                    //.frame(width: 1.0, height: 5.0)
                    Image(systemName: "location")
                    
                }
            }
            .padding()
            .background(Rectangle().foregroundColor(.gray))
            .cornerRadius(15)
            .shadow(radius:15)
            .padding()
            
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Card()
    }
}
