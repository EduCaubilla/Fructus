//
//  SettingsView.swift
//  Fructus
//
//  Created by Edu Caubilla on 19/5/25.
//

import SwiftUI

struct SettingsView: View {
    //MARK: - PORPERTIES
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding : Bool = false

    //MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20){
                    //MARK: - SECTION 1
                    GroupBox {
                        Divider().padding(.vertical, 2)

                        HStack (alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, alignment: .center)
                                .cornerRadius(10)

                            Text("Most fruits are naturally low in fat, sodium and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamines, and much more.")
                                .font(.footnote.weight(.light))
                        }
                    } label: {
                        SettingLabelView(labelText: "Fructus", labelImage: "info.circle")
                    }


                    //MARK: - SECTION 2
                    GroupBox {
                        Divider().padding(.vertical,4)

                        Text("If you want to restart the app switch this toggle. It will start the onboarding process and willl show the welcome screen again.")
                            .font(.footnote.weight(.light))
                            .multilineTextAlignment(.leading)
                            .padding(.vertical, 5)
                            .frame(minHeight: 60)
                            .layoutPriority(1)

                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted").textCase(.uppercase)
                                    .fontWeight(.bold)
                                    .foregroundStyle(.green)
                            } else {
                                Text("Restart").textCase(.uppercase)
                                    .fontWeight(.bold)
                                    .foregroundStyle(.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                        )
                    } label: {
                        SettingLabelView(labelText: "Customization", labelImage: "paintbrush")
                    }



                    //MARK: - SECTION 3
                    GroupBox {
                        SettingsRowView(name: "Developer", content: "John / Jane")
                        SettingsRowView(name: "Designer", content: "Edu Caubilla")
                        SettingsRowView(name: "Compatibility", content: "iOS 16")
                        SettingsRowView(name: "Website", linkLabel: "Edu Caubilla", linkDestination: "educaubilla.netlify.app")
                        SettingsRowView(name: "Bluesky", linkLabel: "@educaubilla.bsky.social", linkDestination: "bsky.app/profile/educaubilla.bsky.social")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.0")
                    } label: {
                        SettingLabelView(labelText: "Application", labelImage: "apps.iphone")
                    }
                }
                .navigationTitle("Settings")
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button {
                            presentationMode.wrappedValue.dismiss()
                        } label: {
                            Image(systemName: "xmark")
                        }

                    }
                }
                .toolbarTitleDisplayMode(.large)
                .padding()
            }
        }
    }
}

//MARK: - PREVIEW
#Preview {
    SettingsView()
        .preferredColorScheme(.dark)
}
