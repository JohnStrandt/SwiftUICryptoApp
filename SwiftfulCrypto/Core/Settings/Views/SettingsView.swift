//
//  SettingsView.swift
//  SwiftfulCrypto
//
//  Created by John Strandt on 7/31/23.
//

import SwiftUI

struct SettingsView: View {
    
    @State private var isPresented = false
    @Environment(\.dismiss) var dismiss
    let defaultURL = URL(string: "https://www.google.com")!
    let youtubeURL = URL(string: "https://www.youtube.com/c/swiftfulthinking")!
    let coffeeURL = URL(string: "https://www.buymeacoffee.com/nicksarno")!
    let coingeckoURL = URL(string: "https://www.coingecko.com")!
    let personalURL = URL(string: "https://www.github.com/johnstandt")!

    var body: some View {
        //  Sheets create a new environment -
        // therefore, we are no longer in our NavigationView
        NavigationView {
            ZStack {
                //  background
                Color.theme.background
                    .ignoresSafeArea()
                
                //  content layer
                List {
                    swiftfulThinkingSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    coinGeckoSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    developerSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    applicationSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                }
            }
            .font(.headline)
            .accentColor(.blue)
            .listStyle(GroupedListStyle())
            .navigationTitle("Settings")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    dismissButton
                }
            }
        }
    }
}

extension SettingsView {
    
    private var dismissButton: some View {
        Button(action: {
            dismiss()
        }, label: {
            Image(systemName: "xmark")
                .foregroundColor(Color.theme.accent)
                .font(.headline)
        })
    }
    
    private var swiftfulThinkingSection: some View {
        Section(header: Text("Swiftful Thinking")) {
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This app was made by a @SwiftfulThinking tutorial on YouTube.  It uses MVVM Architecture, Combine, and CoreData!")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.secondaryText)
            }
            .padding(.vertical)
            Link("Subscribe on YouTube", destination: youtubeURL)
            Link("Support his coffee addiction ☕️", destination: coffeeURL)
        }
    }
    
    private var coinGeckoSection: some View {
        Section(header: Text("CoinGecko")) {
            VStack(alignment: .leading) {
                Image("coingecko")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("The crypto currency data used in this app was provided by a free api from CoinGecko!  Prices may be slightly delayed.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.secondaryText)
            }
            .padding(.vertical)
            Link("Visit CoinGecko 🦎", destination: coingeckoURL)
        }
    }
    
    private var developerSection: some View {
        Section(header: Text("Developer")) {
            VStack(alignment: .leading) {
                Image("sparky")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                Text("My name is John Strandt.  I am a software engineer with a degree in Computer Systems Engineering from ASU.  I have been working on a few new languages recently, and this app is part of my SwiftUI learning.\n\nThis app was developed using SwiftUI, and is written 100% in Swift.  The project benefits from multi-threading, publishers/subscribers, and data persistance.\n\nI made a few minor changes along the way, as some of the SwiftUI code had been deprecated, while other new enhancements to SwiftUI have been added since Nick created this tutorial")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.secondaryText)
            }
            .padding(.vertical)
            Link("Github", destination: personalURL)
        }
    }
    
    private var applicationSection: some View {
        Section(header: Text("Application")) {
            Link("Terms of Service", destination: defaultURL)
            Link("Privacy Policy", destination: defaultURL)
            Link("Company Website", destination: defaultURL)
            Link("Learn More", destination: defaultURL)
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
