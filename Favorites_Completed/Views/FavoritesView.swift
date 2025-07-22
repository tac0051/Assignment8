//
// FavoritesView.swift : Favorites
//
// Copyright © 2025 Auburn University.
// All Rights Reserved.


import SwiftUI

struct FavoritesView: View {
    @EnvironmentObject var favorites: FavoritesViewModel
    
    var body: some View {
        NavigationStack {
            List {
                // Cities
                let favCities = favorites.cities.filter(\.isFavorite)
                if !favCities.isEmpty {
                    Section("Cities") {
                        ForEach(favCities) { city in
                            CityCardView(city: city)
                        }
                    }
                }
                
                // Hobbies
                let favHobbies = favorites.hobbies.filter(\.isFavorite)
                if !favHobbies.isEmpty {
                    Section("Hobbies") {
                        ForEach(favHobbies) { hobby in
                            HobbyRowView(hobby: hobby)
                        }
                    }
                }
                
                // Books
                let favBooks = favorites.books.filter(\.isFavorite)
                if !favBooks.isEmpty {
                    Section("Books") {
                        ForEach(favBooks) { book in
                            BookRowView(book: book)
                        }
                    }
                }
            }
            .navigationTitle("Favorites")
            .listStyle(.insetGrouped)
        }
    }
}

#Preview {
    FavoritesView()
        .environmentObject(FavoritesViewModel())
}
