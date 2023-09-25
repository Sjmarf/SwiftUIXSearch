//
//  ContentView.swift
//  SwiftUIXSearch
//
//  Created by Sjmarf on 25/09/2023.
//

import SwiftUI
import SwiftUIX

struct ContentView: View {
    @State var searchText = ""
    @State var isSearching = false
    var body: some View {
        NavigationStack {
            Button("Click to unfocus search bar") {
                isSearching = false
            }
            .navigationTitle("Search")
            .navigationSearchBar {
              SearchBar("Search", text: $searchText, isEditing: $isSearching)
              }
          .navigationSearchBarHiddenWhenScrolling(true)
        }
    }
}

#Preview {
    ContentView()
}
