//
//  Meal.swift
//  Meal Delivery
//
//  Created by Kushagra Sinha on 22/06/25.
//

import Foundation

struct Meal: Identifiable {
    var id: UUID = UUID()
    var name: String
    var price: Double
    var description: String
    var imageName: String
}
