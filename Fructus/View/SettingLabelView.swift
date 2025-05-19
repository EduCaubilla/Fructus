//
//  SettingLabelView.swift
//  Fructus
//
//  Created by Edu Caubilla on 19/5/25.
//

import SwiftUI

struct SettingLabelView: View {
    //MARK: - PROPERTIES
    var labelText : String
    var labelImage : String

    //MARK: - BODY
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

//MARK: - PREVIEW
#Preview (traits: .sizeThatFitsLayout) {
    SettingLabelView(labelText: "Fructus", labelImage: "info.circle")
        .padding()
}

