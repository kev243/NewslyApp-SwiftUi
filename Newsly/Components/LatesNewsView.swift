//
//  LatesNewsView.swift
//  Newsly
//
//  Created by Kevin Nimi on 2024-03-22.
//

import SwiftUI

struct LatesNewsView: View {
    var body: some View {
        HStack(alignment:.top, spacing: 16){
            ZStack {
                RoundedRectangle(cornerRadius: 8)
                    .foregroundStyle(Color.gray.opacity(0.3))
                AsyncImage(url: URL(string: "https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/WN4CIKM3ZDLRU5GYAY3ICQ7PZ4_size-normalized.jpg&w=1440")) { phase in
                    switch phase {
                    case .success(let image):
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame( width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100) // Taille de l'image
                            .cornerRadius(10)
                            .clipped()
                    case .failure(let error):
                        Text("Failed to load image: \(error.localizedDescription)")
                    case .empty:
                        ProgressView()
                    @unknown default:
                        EmptyView()
                    }
                   
                }
                .frame(maxWidth: .infinity, maxHeight: 100)
            }
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
            
            VStack (alignment:.leading, spacing: 5){
                Text("CBS")
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.primary)
                    .font(.footnote)
                Text("Contrairement à une opinion répandue, le Lorem Ipsum, le Lorem Ipsum")
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.primary)
                    .lineLimit(3)
                    .font(.title3)
                    .bold()
                
                Divider()
                    
            }
           
           
        }
        
    }
}

#Preview {
    LatesNewsView()
}
