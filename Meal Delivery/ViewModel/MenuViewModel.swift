//
//  MenuViewModel.swift
//  Meal Delivery
//
//  Created by Kushagra Sinha on 22/06/25.
//

import Foundation

class MenuViewModel: ObservableObject {
    @Published var meals: [Meal] = []
    init() {
        loadMeals()
    }
    
    func loadMeals() {
        let original = DataService.getMeals()
        let repeated = Array(repeating: original, count: 2)
        let duplicated = repeated.flatMap{$0}
        self.meals = duplicated.map {
            Meal(name: $0.name, price: $0.price, description: $0.description, imageName: $0.imageName)
        }
    }
}
