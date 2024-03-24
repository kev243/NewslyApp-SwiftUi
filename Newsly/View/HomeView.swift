//
//  HomeView.swift
//  Newsly
//
//  Created by Kevin Nimi on 2024-03-22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            ScrollView (showsIndicators: false){
                VStack(alignment:.leading,spacing: 0){
                    HStack{
                        Text("À la une")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .bold()
                        Spacer()
                        Text("🌎")
                            .bold()
                    }
                    .padding()
                    
                    ScrollView (.horizontal, showsIndicators: false ){
                        HStack(spacing:5){
                            ForEach ( 0..<5) {_ in
                                NavigationLink{
                                    Text("news view")
                                }label:{
                                    AlaUneView()
                                        .frame(width: 350, height: 500)
                                }
                               
                            }
                        }
                      
                    }
                    
                    HStack{
                        Text("Dernières nouvelles")
                            .font(.title2)
                            .fontWeight(.medium)
                        
                        Spacer()
                        
                        NavigationLink(destination: AllNewsView()) {
                            Image(systemName: "circle.grid.2x2.fill")
                                .foregroundColor(.primary)
                                
                        }

                    }
                    .padding()
                    
                    VStack(spacing:25){
                        ForEach(0..<6) { _ in
                            NavigationLink{
                                NewsView()
                            }label:{
                                LatesNewsView()
            
                            }
                            
                        }
                    }
                    .padding()
                    
               
                    
                }
                
              
              }
            
           }
 
           
        }
        
    }


#Preview {
    HomeView()
}
