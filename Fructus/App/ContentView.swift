    //
    //  ContentView.swift
    //  Fructus
    //
    //  Created by Edu Caubilla on 16/5/25.
    //

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    @State private var isSHowingSettings : Bool = false

    var fruits : [Fruit] = fruitsData.shuffled()

    //MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                }
                .listRowSeparator(.hidden)
            }
            .navigationTitle("Fruits")
            .toolbar(content: {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        isSHowingSettings = true
                    } label: {
                        Image(systemName: "slider.horizontal.3")
                    } //: BUTTON
                    .sheet(isPresented: $isSHowingSettings) {
                        SettingsView()
                    }
                }
            })
            .listStyle(.plain)
        } //: NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

    //MARK: - PREVIEW
#Preview {
    ContentView(fruits: fruitsData)
}
