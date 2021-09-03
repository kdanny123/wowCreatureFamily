//
//  CreatureDetail.swift
//  WoWAuctionHouse
//
//  Created by Kun Lok on 8/31/21.
//

import Foundation
import SwiftUI


struct CreatureDetail: View {
    var creatureType: String
    
    func urlParam(creatureType: String) -> String {
        switch creatureType {
        case "Non-combat Pet":
            return "companion"
        case "Not specified":
            return "Uncategorized_creature"
        case "Remote Control":
            return "mechanized_animal"
        default:
            return creatureType.replacingOccurrences(of: " ", with: "_")
        }
    }

    var body: some View {
        let url = "https://wowpedia.fandom.com/wiki/\(urlParam(creatureType: creatureType))"
        Webview(request: URLRequest(url: URL(string: url)!))
    }
}
