//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Edu Caubilla on 19/5/25.
//

import SwiftUI

struct SourceLinkView: View {
    //MARK: - PROPERTIES
    var fruitName: String

    //MARK: - BODY
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com/wiki/\(fruitName)")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

//MARK: - PREVIEW
#Preview (traits: .sizeThatFitsLayout) {
    SourceLinkView(fruitName: fruitsData.first!.title)
        .padding()
}
