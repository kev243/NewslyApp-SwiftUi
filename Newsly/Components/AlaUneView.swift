//
//  AlaUneView.swift
//  Newsly
//
//  Created by Kevin Nimi on 2024-03-22.
//

import SwiftUI

struct AlaUneView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            ZStack {
                AsyncImage(url: URL(string: "https://i.kinja-img.com/image/upload/c_fill,h_675,pg_1,q_80,w_1200/b5adaa02e058acea54ab69fa505844cc.jpg")) { phase in
                    switch phase {
                    case .success(let image):
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame( maxWidth:.infinity) // Taille de l'image
                            .clipped()
                    case .failure(let error):
                        Text("Failed to load image: \(error.localizedDescription)")
                    case .empty:
                        ProgressView()
                    @unknown default:
                        EmptyView()
                    }
                   
                }
                .frame(maxWidth: .infinity, maxHeight: 180) 
                }
            .overlay(alignment: .topTrailing) {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "bookmark.fill")
                            .foregroundColor(.white)
                            .padding()
                      })
                  }
            
            VStack(alignment:.leading) {
                Text("ABC News :")
                    .bold()
                    .font(.footnote)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                Text("Contrairement à une opinion répandue, le Lorem Ipsum n'est pas simplement du texte aléatoire.")
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    .font(.title2)
                    .lineLimit(3)
                    .bold()
                Divider()
                Text("23 janv 2024")
                    .font(.caption)
                    .foregroundStyle(.gray)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
            }
            .foregroundColor(.primary)
            .padding()
        }
        .background(.bar)
        .cornerRadius(10)
        .padding(.horizontal)
        
        
    }
}

#Preview {
    AlaUneView()
}
