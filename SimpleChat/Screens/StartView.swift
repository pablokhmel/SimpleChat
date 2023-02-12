//
//  ContentView.swift
//  SimpleChat
//
//  Created by MacBook on 11.02.2023.
//

import SwiftUI

struct StartView: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        VStack {
            Spacer()
            HStack {
                VStack(alignment: .leading) {
                    Image("ChatImage")
                    Image("HelloChatImage")
                }

                .offset(CGSize(
                    width: 24, height: 0
                ))
                Spacer()
            }
            Spacer()
            HStack {
                NavigationLink(
                    "Create account",
                    destination: StartView()
                )
                    .buttonStyle(SignUpButton())
                    .padding(.horizontal, 24)

                Spacer()

                NavigationLink {
                    StartView()
                } label: {
                    HStack {
                        Text("Log In")
                        Image("Arrow")
                            .foregroundColor(
                                colorScheme == .light ? .black : .white
                            )
                    }
                }
                
                .buttonStyle(LoginButton())
                .padding(.horizontal, 24)
            }
        }
    }
}

struct SignUpButton: ButtonStyle {
    @Environment(\.colorScheme) var colorScheme

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.vertical, 16)
            .padding(.horizontal, 24)
            .font(.headline.bold())
            .foregroundColor(
                colorScheme == .light ? .white : .black
            )
            .background(
                colorScheme == .light ? .black : .white
            )
            .clipShape(Capsule())
    }
}

struct LoginButton: ButtonStyle {
    @Environment(\.colorScheme) var colorScheme

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.headline.bold())
            .foregroundColor(colorScheme == .light ? .black : .white)
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
