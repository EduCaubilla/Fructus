//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Edu Caubilla on 19/5/25.
//

import SwiftUI

struct FruitNutrientsView: View {
    //MARK: - PROPERTIES
    var fruit : Fruit
    let nutrients : [String] = ["Energy",  "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]

    //MARK: - BODY
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0 ..< nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundStyle(fruit.gradientColors[1])
                        .font(.body.bold())

                        Spacer(minLength: 40)

                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        } //: BOX
    }
}

//MARK: - PREVIEW
#Preview (traits: .fixedLayout(width: 375, height: 480)) {
    FruitNutrientsView(fruit: fruitsData.first!)
        .preferredColorScheme(.dark)
        .padding()
}
