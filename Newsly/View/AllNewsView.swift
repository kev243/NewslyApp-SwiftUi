//
//  AllNewsView.swift
//  Newsly
//
//  Created by Kevin Nimi on 2024-03-24.
//

import SwiftUI

struct AllNewsView: View {
    var body: some View {
        ScrollView{
            VStack(spacing:10){
                ForEach(0..<5) { _ in
                    LatesNewsView()
                    
                }
            }
            .padding()
        }
        .navigationTitle("Infos")
    }
}

#Preview {
    AllNewsView()
}
