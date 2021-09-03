//
//  AuctionItem.swift
//  WoWAuctionHouse
//
//  Created by Kun Lok on 8/31/21.
//

import Foundation
import SwiftUI

struct CreatureItem: View {
    var name: String = "creature name type"
    @ObservedObject var viewModel = CreatureData()
    
    //local image assets with respective name: imageName
    func creatureImage(name: String) -> String {
        switch name {
        case "Beast":
            return "beast"
        case "Critter":
            return "critter"
        case "Demon":
            return "demon"
        case "Dragonkin":
            return "dragonkin"
        case "Elemental":
            return "elemental"
        case "Gas Cloud":
            return "gascloud"
        case "Giant":
            return "giant"
        case "Humanoid":
            return "humanoid"
        case "Mechanical":
            return "mechanical"
        case "Non-combat Pet":
            return "noncombatpet"
        case "Not specified":
            return "notspecified"
        case "Totem":
            return "totem"
        case "Undead":
            return "undead"
            
        default:
            return "placeholder_image"
        }
    }
    
    var body: some View {
       HStack {
            Image(creatureImage(name: name))
                .resizable()
                .frame(width: 50, height: 50)
            Text(name)
        }
    }
}


