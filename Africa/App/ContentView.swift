//
//  ContentView.swift
//  Africa
//
//  Created by Sandeep Maurya on 01/08/23.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTY
    let animals: [Animal] = Bundle.main.decode("animals.json")
    
    var body: some View {
        NavigationView {
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animals) { animal in
                    NavigationLink {
                        AnimalDetailView(animal: animal)
                    } label: {
                        AnimalListItemView(animal: animal)
                    } //LINK
                }
            } //: LIST
            .listStyle(PlainListStyle())
            .navigationBarTitle("Africa", displayMode: .large)
        }//: NAVIGATION
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
