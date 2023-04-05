//
//  Hikes.swift
//  Hiking
//
//  Created by Marcus Y. Kim on 4/2/23.
//

import Foundation

struct Hike {
    let name: String
    let imageURL: String
    let miles: Double
}

extension Hike {
    static func all() -> [Hike] {
        return [
            Hike(name: "Hollywood Sign", imageURL: "hollywood", miles: 6),
            Hike(name: "Everest", imageURL: "everest", miles: 20),
            Hike(name: "Jupiter", imageURL: "jupiter", miles: 200000000)
        
        ]
    }
}
