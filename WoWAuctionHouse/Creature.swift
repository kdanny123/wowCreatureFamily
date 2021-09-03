//
//  Creature.swift
//  WoWAuctionHouse
//
//  Created by Kun Lok on 8/31/21.
//

import Foundation

struct Welcome: Codable, Hashable {
    let links: Links
    let creatureFamilies: [CreatureFamily]

    enum CodingKeys: String, CodingKey {
        case links = "_links"
        case creatureFamilies = "creature_families"
    }
}

// MARK: - CreatureFamily
struct CreatureFamily: Codable, Hashable {
    let key: SelfClass
    let name: String
    let id: Int
}

// MARK: - SelfClass
struct SelfClass: Codable, Hashable {
    let href: String
}

// MARK: - Links
struct Links: Codable, Hashable {
    let linksSelf: SelfClass

    enum CodingKeys: String, CodingKey {
        case linksSelf = "self"
    }
}
