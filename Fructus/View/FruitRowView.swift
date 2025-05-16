//
//  FruitRowView.swift
//  Fructus
//
//  Created by Edu Caubilla on 16/5/25.
//

import SwiftUI

struct FruitRowView: View {
    //MARK: - PROPERTIES
    var fruit : Fruit

    //MARK: - BODY
    var body: some View {
        HStack (spacing: 10) {
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: .black.opacity(0.3), radius: 3, x: 2, y: 2)
                .background(
                    LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom)
                )
                .cornerRadius(8)

            VStack(alignment: .leading, spacing: 5) {
                Text(fruit.title)
                    .font(.title2.bold())
                Text(fruit.headline)
                    .font(.footnote.weight(.light))
                    .foregroundStyle(.secondary)
            }
        } //: HSTACK
    }
}

//MARK: - PREVIEW
#Preview (traits: .sizeThatFitsLayout) {
    FruitRowView(fruit: fruitsData[0])
        .padding()
}
