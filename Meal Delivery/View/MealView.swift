//
//  MealView.swift
//  Meal Delivery
//
//  Created by Kushagra Sinha on 22/06/25.
//

import SwiftUI

struct MealView: View {
    @StateObject var viewModel = MenuViewModel()
    @State var selectedMeal: Meal? = nil
    @State var isMealDetaileViewPresented: Bool = false
    
    let gradientBackgroundColor: [Color] = [Color.blue.opacity(0.3), Color.pink.opacity(0.3)]
    
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: gradientBackgroundColor),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            VStack {
                HStack {
                    Text("Our Menu")
                        .font(.largeTitle)
                        .bold()
                    Spacer()
                }
                
                GeometryReader { proxy in
                    let columns = 2
                    let spacing: CGFloat = 25
                    let totalSpacing = spacing * CGFloat(columns - 1)
                    let itemWidth = (proxy.size.width - totalSpacing) / CGFloat(columns)
                    
                    ScrollView(showsIndicators: false) {
                        LazyVGrid(
                            columns: Array(repeating: GridItem(.flexible(), spacing: spacing), count: columns),
                            spacing: spacing
                        ) {
                            ForEach(viewModel.meals) { meal in
                                Image(meal.imageName)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: itemWidth, height: itemWidth)
                                    .clipped()
                                    .clipShape(RoundedRectangle(cornerRadius: 20))
                                    .onTapGesture {
                                        print("Meal : ",meal)
                                        isMealDetaileViewPresented = true
                                        selectedMeal = meal
                                    }
                            }
                        }
                        .padding(8)
                    }
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                }
            }
            .padding()
        }
        .sheet(item: $selectedMeal) { meal in
            MealDetailView(selectedMeal: meal, selectedMealBinding: $selectedMeal)
        }
    }
}

#Preview {
    MealView(selectedMeal: nil)
}
