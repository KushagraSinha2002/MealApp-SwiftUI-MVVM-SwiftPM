//
//  MealDetailView.swift
//  Meal Delivery
//
//  Created by Kushagra Sinha on 22/06/25.
//

import SwiftUI

struct MealDetailView: View {
    
    @State var selectedMeal: Meal
    @State private var colorIndex = 0
    
    @Binding var selectedMealBinding: Meal?
    
    let gradients = [
        [Color.orange, Color.yellow],
        [Color.pink, Color.purple],
        [Color.blue, Color.green],
        [Color.red, Color.orange]
    ]
    var body: some View {
        VStack{
            // MARK: - Dish Name
            HStack{
                Text(selectedMeal.name)
                    .font(.largeTitle)
                    .bold()
                Spacer()
                
                Button {
                    print("Close Button Tapped")
                    selectedMealBinding = nil
                } label: {
                    Image(systemName: "x.circle")
                        .foregroundStyle(Color.gray)
                        .font(.title)
                    
                }
                
            }
            .padding(.horizontal)
            
            ScrollView(showsIndicators: false){
                // MARK: - Dish Image
                VStack{
                    GeometryReader{ proxy in
                        ZStack{
                            
                            let width = min(proxy.size.width, 350)
                            
                            HStack{
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(
                                        LinearGradient(
                                            gradient: Gradient(colors: gradients[colorIndex]),
                                            startPoint: .topLeading,
                                            endPoint: .bottomTrailing
                                        )
                                    )
                                    .frame(width: proxy.size.width, height: width * 0.9)
                                    .animation(.easeInOut(duration: 1.0), value: colorIndex)
                            }
                            HStack{
                                Spacer()
                                Image(selectedMeal.imageName)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .clipShape(RoundedRectangle(cornerRadius: 20))
                                    .frame(width: width * 0.90, height: width * 0.80)
                                Spacer()
                            }
                        }
                    }
                    .frame(height: 350)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                }
                .onAppear {
                    Timer.scheduledTimer(withTimeInterval: 3.0, repeats: true) { _ in
                        withAnimation {
                            colorIndex = (colorIndex + 1) % gradients.count
                        }
                    }
                }
                
                // MARK: - Dish Description
                VStack{
                    HStack{
                        Text("\(selectedMeal.description)")
                    }
                    .padding(.horizontal, 10)
                }
                .frame(maxWidth: .infinity, alignment: .center)
            }
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .padding(.horizontal,10)
            
            // MARK: - Dish Price
            HStack {
                Button {
                    print("Dish Price: ₹\(selectedMeal.price)")
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 50)
                            .fill(Color.blue)
                            .frame(width: 250, height: 50)
                        Text("Buy for ₹\(String(format: "%.2f", selectedMeal.price))")
                            .font(.title3)
                            .foregroundStyle(Color.white)
                    }
                }
            }
        }
        .padding(.top)
        
        
    }
}

#Preview {
    MealDetailView(selectedMeal: Meal(
        name: "Bibimbap",
        price: 320,
        description: "Bibimbap is a traditional Korean rice dish served with an array of seasoned vegetables, marinated beef, and topped with a fried egg. It’s known for its colorful presentation and balance of textures and flavors. The name means 'mixed rice,' and it’s typically stirred together with gochujang (Korean red chili paste) before eating. The contrast of warm rice, crisp vegetables, spicy sauce, and savory protein makes it a favorite comfort food that’s both nourishing and deeply satisfying.Bibimbap is a traditional Korean rice dish served with an array of seasoned vegetables, marinated beef, and topped with a fried egg. It’s known for its colorful presentation and balance of textures and flavors. The name means 'mixed rice,' and it’s typically stirred together with gochujang (Korean red chili paste) before eating. The contrast of warm rice, crisp vegetables, spicy sauce, and savory protein makes it a favorite comfort food that’s both nourishing and deeply satisfying.",
        imageName: "6"
    ), selectedMealBinding: Binding.constant(nil))
}
