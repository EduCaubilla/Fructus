//
//  OnboardingView.swift
//  Fructus
//
//  Created by Edu Caubilla on 16/5/25.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData.shuffled()

    //MARK: - BODY
    var body: some View {
        TabView {
            ForEach(fruits[0...12]) { item in
                FruitCardView(fruit: item)
            }//: LOOP
        }//: TABVIEW
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

//MARK: - PREVIEW
#Preview {
    OnboardingView()
}
