//
//  NewsView.swift
//  Newsly
//
//  Created by Kevin Nimi on 2024-03-24.
//

import SwiftUI

struct NewsView: View {
    var body: some View {
        NavigationView {
            VStack(alignment:.leading, spacing: 20){
                
                VStack(alignment:.leading,spacing: 10){
                    //date
                    Text("Publier le 23 mars 2024")
                        .font(.footnote)
                        .foregroundStyle(.gray)
                    //image
                    AsyncImage(url: URL(string: "https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/WN4CIKM3ZDLRU5GYAY3ICQ7PZ4_size-normalized.jpg&w=1440")) { phase in
                        switch phase {
                        case .success(let image):
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(height: 200) // Taille de l'image
                                .cornerRadius(10)
                                .clipped()
//                                .padding(.horizontal, 5)
                        case .failure(let error):
                            Text("Failed to load image: \(error.localizedDescription)")
                        case .empty:
                            ProgressView()
                        @unknown default:
                            EmptyView()
                        }
                       
                    }
                    
                    
                    //origine
                    Text("CBS")
                        .font(.footnote)
                    
                    //title
                    Text("Total U.S. Billionaire Wealth is Up 88 Percent over Four Years")
                        .lineLimit(nil)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.body)
                        .bold()
                }
            
                
                //description
                Text("By Chuck Collins and Omar Ocampo | - ( Inequality.org ) - Four years ago, the United States entered the Covid-19 pandemic. Forbes published its 34th annual billionaire survey shortly after with data keyed to March 18, 2020. On that day, the United States had")
                    .lineLimit(nil)
                    .fixedSize(horizontal: false, vertical: true)
                    .font(.body)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                
                //button open link
                HStack {
                    
                    Image(systemName: "link")
                    Text("Lire l'article au complet")
                        .underline()
                        .foregroundStyle(.primary)
                        .onTapGesture {
                            if let url = URL(string: "https://www.example.com") {
                                UIApplication.shared.open(url)
                            }
                    }
                }
                Spacer()
                
            }
            .padding()
        }
        .toolbar{
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: {}, label: {
                    Image(systemName: "bookmark.fill")
                        .foregroundColor(.primary)
                        .padding()
                })
            }
        }
    }
}

#Preview {
    NewsView()
}
