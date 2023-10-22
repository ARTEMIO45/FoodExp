//
//  FoodvViewModel.swift
//  ExpireFood
//
//  Created by Artemio Rodriguez on 10/22/23.
//

import Foundation

class FoodvViewModel: ObservableObject{
    @Published var Categories : [String] = [];
    @Published var AmountOfFood = 0;
    @Published var name:String = ""
    
    
    func addCategorie(name:String){
        
        Categories.append(name)
    }
    func printCategories(Categories:inout[String]){
        
        for i in Categories{
            print("\(i)")
        }
    }
    
}
