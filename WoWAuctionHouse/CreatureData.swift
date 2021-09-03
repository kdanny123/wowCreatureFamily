//
//  CreatureData.swift
//  WoWAuctionHouse
//
//  Created by Kun Lok on 8/31/21.
//

import Foundation

class CreatureData: ObservableObject {
    @Published var creature = [CreatureFamily]()
    
    init() {
        loadData()
    }
    
    func loadData() {
        guard let url = URL(string: "https://us.api.blizzard.com/data/wow/creature-family/index?namespace=static-us&locale=en_US&access_token=0000userTokenHere0000") else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data else { return }
            guard let decodedData = try? JSONDecoder().decode(Welcome.self, from: data) else { return }
            
            DispatchQueue.main.async {
                self.creature = decodedData.creatureFamilies.sorted { $0.name < $1.name } //published list of creature types in alphabetical order
            }
        }.resume()
    }
}

