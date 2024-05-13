//
//  HomeView.swift
//  Shop
//
//  Created by Edoardo Martino on 11/05/24.
//

//ringrazio il canale youtube di kavsoft per l'ispirazione dell'app:
//https://www.youtube.com/watch?v=TTftmkW9N8s



import SwiftUI

struct HomeView: View {
    
    @State private var isSheetActive: Bool = false
    @State private var selectedSizes: [Bool] = Array(repeating: false, count: 5) //creo valore iniziale di 5 elementi
    
    let numeroPiede = ["EU 4O","EU 41","EU 42","EU 43", "EU 44" ]
    //corpo della home
        var body: some View{
            ZStack() {
                
                VStack(spacing: 15) {
                    HStack {
                        Button(action: {}, label: {
                            Image(systemName: "line.horizontal.3")
                                .font(.title)
                                .foregroundColor(.black)
                        })
                        Spacer()
                        Button(action: {}, label: {
                            Image(systemName: "bag.fill")
                                .font(.title2)
                                .foregroundColor(.white)
                                .padding(10)
                                .background(Color.purple)
                                .clipShape(Circle())
                        })
                    }
                    .padding()
                    
                    ScrollView() {
                        Button(action: {
                            isSheetActive = true
                        }, label:{
                            VStack(alignment: .leading, spacing: 10, content: {
                                Text("Air ONE")
                                    .fontWeight(.bold)
                                    .foregroundColor(.gray)
                                Text("Nike")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                                Image("scarpa")
                                    .resizable()
                                    .scaledToFit()
                                    .padding(.horizontal, 30)
                                Text("Prezzo")
                                    .fontWeight(.semibold)
                                    .foregroundColor(.gray)
                                Text("129.99 €")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                                
                            })
                            
                            
                            .padding()
                            .background(Color.black.opacity(0.05))
                            .cornerRadius(25)
                            .padding()
                            
                        })
                        //-----------------------------------------------------------------//
                        
                        //inizio sezione sheet
                            .sheet(isPresented: $isSheetActive){
                                VStack(alignment: .leading, spacing: 10, content: {
                                    HStack{
                                        Spacer()
                                        Button(action: {
                                            isSheetActive = false
                                        }) {
                                            Image(systemName: "xmark.circle.fill")
                                                .foregroundColor(.black)
                                                .font(.title)
                                                .padding(.top, 15)
                                        }
                                    }
                                    Text("Air ONE")
                                        .fontWeight(.bold)
                                        .foregroundColor(.gray)
                                    Text("Nike")
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .foregroundColor(.black)
                                    Image("scarpa")
                                        .resizable()
                                        .scaledToFit()
                                        .padding(.horizontal, 30)
                                    Text("Prezzo")
                                        .fontWeight(.semibold)
                                        .foregroundColor(.gray)
                                    Text("129.99 €")
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .foregroundColor(.black)
                                    Button(action: {
                                        isSheetActive = false
                                    }, label: {
                                        Text("Aggiungi al carrello")
                                            .font(.title)
                                            .fontWeight(.semibold)
                                            .foregroundColor(.white)
                                            .padding(10)
                                            .background(.purple)
                                            .cornerRadius(15)
                                    })
                                    
                                })
                                    .padding(.horizontal)
                                
                                Divider()
                                
                                Text("Seleziona un numero: ")
                                    .font(.caption)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.gray)
                                    .padding(.top, 10)
                                
                                let colonne = Array(repeating: GridItem(.flexible(), spacing: 12), count: 4) //quattro elementi griditem
                                
                                LazyVGrid(columns: colonne, alignment: .leading, spacing: nil, pinnedViews: [], content: { //griglia lazygrid suddivide l'array in piccole cellette a vista
                                    ForEach(numeroPiede.indices, id: \.self){index in // itero per tutto l'array e uso il valore dell'elemento stesso di numero piede
                                        Button(action: {
                                            selectedSizes[index].toggle()
                                        }, label: {
                                            Text(numeroPiede[index])
                                                .fontWeight(.semibold)
                                                .foregroundColor(selectedSizes[index] ? Color.white : Color.black)
                                                .padding(.vertical)
                                                .frame(maxWidth: .infinity)
                                                .background(selectedSizes[index] ? Color.purple : Color.black.opacity(0.06))
                                                .cornerRadius(15)
                                        })
                                    }
                                })
                                    .padding()
                            }
                        //fine sheet
                        
                        //-----------------------------------------------------------------//
                            
                        
                        
                        Button(action: {}, label:{
                            VStack(alignment: .leading, spacing: 10, content: {
                                Text("Air Zoom")
                                    .fontWeight(.bold)
                                    .foregroundColor(.gray)
                                Text("Nike")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                                Image("scarpa1")
                                    .resizable()
                                    .scaledToFit()
                                    .padding(.horizontal, 30)
                                Text("Prezzo")
                                    .fontWeight(.semibold)
                                    .foregroundColor(.gray)
                                Text("245.99 €")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                            })
                            
                            .padding()
                            .background(Color.black.opacity(0.05))
                            .cornerRadius(25)
                            .padding()
                            
                        })
                        
                        Button(action: {}, label:{
                            VStack(alignment: .leading, spacing: 10, content: {
                                Text("Air Force")
                                    .fontWeight(.bold)
                                    .foregroundColor(.gray)
                                Text("Nike")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                                Image("scarpa2")
                                    .resizable()
                                    .scaledToFit()
                                    .padding(.horizontal, 30)
                                Text("Prezzo")
                                    .fontWeight(.semibold)
                                    .foregroundColor(.gray)
                                Text("109.99 €")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                                
                            })
                            
                            .padding()
                            .background(Color.black.opacity(0.05))
                            .cornerRadius(25)
                            .padding()
                        })
                        
                        Button(action: {}, label:{
                            VStack(alignment: .leading, spacing: 10, content: {
                                Text("Air Force 1")
                                    .fontWeight(.bold)
                                    .foregroundColor(.gray)
                                Text("Nike")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                                Image("scarpa3")
                                    .resizable()
                                    .scaledToFit()
                                    .padding(.horizontal, 30)
                                Text("Prezzo")
                                    .fontWeight(.semibold)
                                    .foregroundColor(.gray)
                                Text("89.99 €")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                            })
                            
                            .padding()
                            .background(Color.black.opacity(0.05))
                            .cornerRadius(25)
                            .padding()
                            
                        })
                        
                    }
                    
                }
                Image("nike-logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .position(x: UIScreen.main.bounds.width / 2, y: 50)
            }
            //fine home
            
        }
}





