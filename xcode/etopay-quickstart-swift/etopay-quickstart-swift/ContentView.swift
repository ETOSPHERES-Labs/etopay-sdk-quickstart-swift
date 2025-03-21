//
//  ContentView.swift
//  etopay-quickstart-swift
//
//  Created by Dev Ops on 20.03.25.
//

import SwiftUI
import SwiftData
import ETOPaySdk

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]

    var sdk = ETOPaySdk()
    
    var body: some View {
        Text("Build info:\n\(sdk.getBuildInfo().toString())")
    }

    
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
