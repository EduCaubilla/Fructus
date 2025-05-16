    //
    //  ContentView.swift
    //  Fructus
    //
    //  Created by Edu Caubilla on 16/5/25.
    //

import SwiftUI

struct ContentView: View {
        //MARK: - PROPERTIES
    var fruits : [Fruit] = fruitsData.shuffled()

        //MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits) { fruit in
                    FruitRowView(fruit: fruit)
                        .padding(.vertical, 4)
                }
                .listRowSeparator(.hidden)
            }
            .navigationTitle("Fruits")
            .listStyle(.plain)
        }
    }
}

    //MARK: - PREVIEW
#Preview {
    ContentView(fruits: fruitsData)
}
