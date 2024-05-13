//
//  ContentView.swift
//  Shop
//
//  Created by Edoardo Martino on 10/05/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedTab: Int = 0 // Stato per tenere traccia della tab selezionata
    
    
    var body: some View {
        
        TabView(selection: $selectedTab) {
            // Prima Tab: Contenuto principale
            HomeView()
            
            .tabItem {
                Image(systemName: "house.fill")
            }
            .tag(0)
            
            
            // Seconda Tab
            Text("preferiti")
                .tabItem {
                    Image(systemName: "star.fill")
                }
                .tag(1)
            
            Text("notifiche")
                .tabItem{
                    Image(systemName: "bell.fill")
                }
                .tag(2)
            
            Text("ricerca")
                .tabItem{
                    Image(systemName: "magnifyingglass")
                }
                .tag(3)
            
        }
        .accentColor(.black)
        .edgesIgnoringSafeArea(.bottom)
        
        
    }
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
