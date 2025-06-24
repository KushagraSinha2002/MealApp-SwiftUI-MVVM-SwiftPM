//
//  AboutView.swift
//  Meal Delivery
//
//  Created by Kushagra Sinha on 22/06/25.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.yellow.opacity(0.3), Color.orange.opacity(0.3)]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 16) {
                HStack {
                    Text("About The App")
                        .font(.largeTitle)
                        .bold()
                    Spacer()
                }
                
                ScrollView(showsIndicators: false){
                    Text("""
                    **Meal Delivery** is a modular iOS sample app built using **SwiftUI** and the **MVVM architecture**. It showcases a clean, scalable layout for displaying a grid of Korean meals, using mock data and reusable components.

                    ---

                    ### 🧩 Features:

                    • **MVVM Architecture** for clean separation of concerns  
                    • Built using **SwiftUI**: `LazyVGrid`, `GeometryReader`, `ScrollView`, and more  
                    • Clean layout with modifiers like `.frame`, `.aspectRatio`, `.clipShape()`, and `.padding()`  
                    • Responsive grid UI across all screen sizes  
                    • **Meal Detail View** with image gradient, scrollable text, and animated background  
                    • Structured into **Model**, **ViewModel**, **View** folders for clarity  
                    • **Swift Package-ready structure** — easily extendable to API/data modules  

                    ---

                    This app is designed for:
                    - iOS learners building project confidence  
                    - Freelancers showcasing real-world architecture  
                    - Devs preparing for App Store deployment or team collaboration

                    It serves as a foundation for building scalable, real-world apps — with easy paths to API integration, advanced UI, and modular Swift packages.
                    """)
                    .font(.subheadline)
                    .multilineTextAlignment(.leading)
                }
            }
            .padding()
        }
    }
}

#Preview {
    AboutView()
}
