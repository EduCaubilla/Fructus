//
//  StartButtonView.swift
//  Fructus
//
//  Created by Edu Caubilla on 16/5/25.
//

import SwiftUI

struct StartButtonView: View {
    //MARK: - PROPERTIES
    @AppStorage("isOnboarding") var isOnboarding: Bool?

    //MARK: - BODY
    var body: some View {
        Button {
            print("Exit the onboarding")
            isOnboarding = false
        } label: {
            HStack(spacing: 8) {
                Text("Start")

                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
            .background(
                Capsule()
                    .strokeBorder(.white, lineWidth: 1.25)
            )
        } //: BUTTON
        .accentColor(.white)
    }
}

    //MARK: - PREVIEW
#Preview (traits: .sizeThatFitsLayout) {
    StartButtonView()
}
