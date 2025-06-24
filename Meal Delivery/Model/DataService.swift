//
//  DataService.swift
//  Meal Delivery
//
//  Created by Kushagra Sinha on 22/06/25.
//

import Foundation

struct DataService {
    static func getMeals() -> [Meal] {
        return [
            Meal(
                name: "Bibimbap",
                price: 320,
                description: "Bibimbap is a traditional Korean rice dish served with an array of seasoned vegetables, marinated beef, and topped with a fried egg. It’s known for its colorful presentation and balance of textures and flavors. The name means 'mixed rice,' and it’s typically stirred together with gochujang (Korean red chili paste) before eating. The contrast of warm rice, crisp vegetables, spicy sauce, and savory protein makes it a favorite comfort food that’s both nourishing and deeply satisfying.",
                imageName: "1"
            ),
            Meal(
                name: "Kimchi Jjigae",
                price: 280,
                description: "Kimchi Jjigae is a bold and flavorful stew made with aged kimchi, pork belly, tofu, and scallions simmered in a spicy broth. It’s a staple in Korean households, often enjoyed bubbling hot with a bowl of rice. The stew gets its deep umami flavor from fermented kimchi, while soft tofu and pork bring richness and body. It's the ultimate Korean soul food—warming, spicy, and hearty enough to soothe your appetite and spirit on the coldest days.",
                imageName: "2"
            ),
            Meal(
                name: "Tteokbokki",
                price: 150,
                description: "Tteokbokki is one of Korea’s most iconic street foods—featuring chewy cylindrical rice cakes stir-fried in a fiery gochujang-based sauce. It's sweet, spicy, and deeply satisfying. Often paired with fish cakes, boiled eggs, and scallions, this dish is perfect for sharing or snacking on the go. Its bright red color and addictive texture make it a favorite for both kids and adults, served from food stalls or customized in restaurants with cheese or ramen toppings.",
                imageName: "3"
            ),
            Meal(
                name: "Samgyeopsal",
                price: 450,
                description: "Samgyeopsal is a Korean BBQ favorite featuring thick slices of pork belly grilled right at the table. Served with fresh lettuce, garlic, grilled onions, and a spicy ssamjang dipping sauce, each bite is built by hand. You wrap the grilled pork in lettuce with condiments for a perfect flavor combo. It’s a social meal, enjoyed with friends or family, and often accompanied by soju. The sizzling aroma and juicy meat make it an unforgettable dining experience.",
                imageName: "4"
            ),
            Meal(
                name: "Japchae",
                price: 220,
                description: "Japchae is a beloved Korean noodle dish made from sweet potato glass noodles stir-fried with a medley of colorful vegetables, beef, and a savory-sweet soy-based sauce. Known for its glossy look and springy texture, Japchae is typically served during festive holidays and gatherings. Sesame oil and seeds add nuttiness, while carrots, spinach, mushrooms, and onions give it layers of flavor. It’s light yet filling, and always a crowd-pleaser whether hot or cold.",
                imageName: "5"
            ),
            Meal(
                name: "Sundubu Jjigae",
                price: 300,
                description: "Sundubu Jjigae is a spicy soft tofu stew served in a hot stone bowl, bubbling with rich flavor and heat. It typically includes soft uncurdled tofu, seafood or meat, egg, and vegetables in a vibrant red chili broth. The contrast between the silky tofu and spicy soup makes it a favorite in Korean cuisine. Crack an egg into the pot just before serving, and it gently cooks in the broth. It’s hearty, warming, and perfect for a cozy, satisfying meal.",
                imageName: "6"
            )
        ]
    }
}
