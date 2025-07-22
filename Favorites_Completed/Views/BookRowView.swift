//
//  BookRowView.swift
//  Favorites_Completed
//
//  Created by user942589 on 7/12/25.
//


import SwiftUIstruct BookRowView: View {        let book: BookModel    @EnvironmentObject private var favorites: FavoritesViewModel        var body: some View {        HStack {            VStack(alignment: .leading, spacing: 2) {                Text(book.bookTitle)                    .font(.headline)                Text(book.bookAuthor)                    .font(.subheadline)                    .foregroundColor(.secondary)            }            Spacer()            Button {                favorites.toggleFavoriteBook(book)            } label: {                Image(systemName: book.isFavorite ? "heart.fill" : "heart")                    .foregroundStyle(book.isFavorite ? .red : .gray)            }        }        .padding(.vertical, 4)    }}#Preview {    BookRowView(book: BookModel(        id: 1,        bookTitle: "To Kill a Mockingbird",        bookAuthor: "Harper Lee"))    .environmentObject(FavoritesViewModel())}