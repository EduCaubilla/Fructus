//
//  FruitCardView.swift
//  Fructus
//
//  Created by Edu Caubilla on 16/5/25.
//

import SwiftUI

struct FruitCardView: View {
    //MARK: - PROPERTIES
    var fruit: Fruit

    @State private var isAnimating: Bool = false


    //MARK: - BODY
    var body: some View {
        ZStack {

            VStack (spacing: 20) {
                    // FRUIT: IMAGE
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .black.opacity(0.25), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1 : 0.6)

                    // FRUIT: TITLE
                Text(fruit.title)
                    .foregroundStyle(.white)
                    .font(.largeTitle.weight(.heavy))
                    .shadow(color: .black.opacity(0.15), radius: 2, x: 2, y: 2)

                    // FRUIT: HEADLINE
                Text(fruit.headline)
                    .font(.subheadline.weight(.light))
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 25)
                    .frame(maxWidth: 480)

                    // BUTTON: START
                StartButtonView()

            } //: VSTACK
        } //: ZSTACK
        .onAppear{
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing))
        .cornerRadius(20)
        .padding(.horizontal, 20)
//        .ignoresSafeArea()
    }
}

//MARK: - PREVIEW
#Preview (traits: .fixedLayout(width: 320, height: 640)) {
    FruitCardView(fruit: fruitsData[5])
}
