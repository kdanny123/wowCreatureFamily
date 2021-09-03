//
//  ContentView.swift
//  WoWAuctionHouse
//
//  Created by Kun Lok on 8/31/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = CreatureData()
    @State var isLinkActive = false
    
    
    var body: some View {
        VStack {
            NavigationView{
                List {
                    
                    ForEach(viewModel.creature, id: \.self) {x in
                        NavigationLink(
                            destination: CreatureDetail(creatureType: x.name))
                            { CreatureItem(name: x.name) }
                    }
                    .listRowBackground(Color.gray.opacity(85.0))
                    padding(.trailing)
                }
                .navigationBarTitle(Text("Creatures"))
                .navigationBarHidden(true)
                .edgesIgnoringSafeArea(.all)
                .listStyle(GroupedListStyle())
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


