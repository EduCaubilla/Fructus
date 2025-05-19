//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Edu Caubilla on 19/5/25.
//

import SwiftUI

struct FruitDetailView: View {
    //MARK: - PROPERTIES
    var fruit : Fruit

    //MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    //HEADER
                    FruitHeaderView(fruit: fruit)

                    VStack(alignment: .leading, spacing: 20) {
                        //TITLE
                        Text(fruit.title)
                            .font(.largeTitle.weight(.heavy))
                            .foregroundStyle(fruit.gradientColors[1])

                        //HEADLINE
                        Text(fruit.headline)
                            .font(.title)
                            .multilineTextAlignment(.leading)
                            .foregroundStyle(.gray)

                        //NUTRIENTS
                        FruitNutrientsView(fruit: fruit)

                        //SUBHEADLINE
                        Text("Learn more about \(fruit.title)").textCase(.uppercase)
                            .fontWeight(.light)
                            .foregroundStyle(fruit.gradientColors[1])

                        //DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)

                        //LINK
                        SourceLinkView(fruitName: fruit.title)
                    } //VSTACK
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                } //: VSTACK
                .navigationTitle(fruit.title)
                .navigationBarTitleDisplayMode(.inline)
                .toolbar(.hidden)
            } //: SCROLLVIEW
            .edgesIgnoringSafeArea(.all)
            .padding(.bottom, 10)
        } //: NAV
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

//MARK: - PREVIEW
#Preview {
    FruitDetailView(fruit: fruitsData.first!)
}
