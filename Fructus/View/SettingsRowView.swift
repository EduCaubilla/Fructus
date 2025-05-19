//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Edu Caubilla on 19/5/25.
//

import SwiftUI

struct SettingsRowView: View {
    //MARK: - PROPERTIES
    var name : String
    var content : String? = nil
    var linkLabel : String? = nil
    var linkDestination: String? = nil

    //MARK: - BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name).foregroundStyle(.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if (linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.circle")
                        .foregroundStyle(.pink)
                } else {
                    EmptyView()
                }
            }
        }
    }
}

//MARK: - PREVIEW
#Preview ("Common", traits: .sizeThatFitsLayout) {
    SettingsRowView(
        name: "Developer" ,
        content: "John / Jane")
        .padding()
}

#Preview ("Link", traits: .sizeThatFitsLayout) {
    SettingsRowView(
        name: "Link",
        linkLabel: "Go to link",
        linkDestination: "wikipedia.com")
        .padding()
}
