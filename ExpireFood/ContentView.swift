//
//  ContentView.swift
//  ExpireFood
//
//  Created by Artemio Rodriguez on 10/19/23.
//

import SwiftUI
let backgroundGradiendt = LinearGradient(
    gradient: Gradient(colors: [Color ("mirage1"),Color ("mirage2")]),
    startPoint:.leading,
    endPoint: .trailing)
let btnBackgroundGradiendt = LinearGradient(
    gradient: Gradient(colors: [Color ("mirage1"),Color ("mirage2")]),
    startPoint:.top,
    endPoint: .trailing)
struct simpleButton: View {
    var title:String = "";
    var body: some View {
        
        Button(action: {
            
            
        },label: {
            Text(title)
                .font(Font.custom("CourierNewPSMT", fixedSize: 16))
                .frame(width: 100,height: 50)
            .accentColor(.black)
            .padding()
            .padding(.horizontal)
            .background(
                Color("light_gray")
            ).cornerRadius(20).shadow(radius:50)
            .padding()
            Spacer()
            
        })
        
    }
}

struct ContentView: View {
    @StateObject var foodViewModel = FoodvViewModel()
    var body: some View {
        
        ZStack {
            
            backgroundGradiendt.ignoresSafeArea(.all) // sets the color to a nice gradient
        
            VStack{
                Spacer()
                Text("Welcome Back")
                    .font(Font.custom("CourierNewPSMT", fixedSize: 25))
                    .foregroundColor(.white)
                Spacer()
                HStack{
                    simpleButton(title:"View Items").bold() // call first button
                    simpleButton(title: "Expire Soon").bold() // call second button
                }
               
                
//                TextField("Type categorie",text: $foodViewModel.name).textFieldStyle(RoundedBorderTextFieldStyle()).padding()
//                    .frame(width: 350)
//                Button("Add food", 
//                       action:{
//                    foodViewModel.addCategorie(name:foodViewModel.name)
//                    foodViewModel.printCategories(Categories: &foodViewModel.Categories)
//                } )
//                Spacer()
//                Spacer()
               
                Image("ingridients").resizable()
                    .frame(width: 350,height: 300)
                    .cornerRadius(20)
                    .shadow(radius: 30).padding()
                Spacer()
                    
            }
            
        }
      //  .background(backgroundGradiendt)
        
    }
}
#Preview {
    ContentView()
}
