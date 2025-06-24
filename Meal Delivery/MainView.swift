//
//  MainView.swift
//  Meal Delivery
//
//  Created by Kushagra Sinha on 22/06/25.
//

import SwiftUI

struct MainView: View {
    
    var body: some View {
        
        TabView{
            Tab("Menu", systemImage: "menucard"){
                MealView()
            }
            Tab("About", systemImage: "info.circle"){
                AboutView()
            }
        }
        
    }
}

#Preview {
    MainView()
}
