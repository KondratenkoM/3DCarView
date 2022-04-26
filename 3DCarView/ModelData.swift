//
//  ModelData.swift
//  3DCarView
//
//  Created by apple on 23.04.2022.
//

import SwiftUI

struct ModelData: Identifiable {
    
    var id: Int
    var name: String
    var modelName: String
    var description: String
    var characteristics: String
    var logo: String
    
}


struct Models {
    
    var model: [ModelData] = [
        ModelData(
            id: 0,
            name: "Porsche.usdz",
            modelName: "Porsche",
            description: "The Porsche 930 is a sports car manufactured by German automobile manufacturer Porsche between 1975 and 1989, known to the public as the 911 Turbo. It was the maker's top-of-the-range 911 model for its entire production duration and, at the time of its introduction, was the fastest production car available in Germany.",
            characteristics: "Power: 260hp Top speed: 246 km/h 0-100: 5,2s",
            logo: "PorscheLogoWB"),
        ModelData(
            id: 0,
            name: "Datsun.usdz",
            modelName: "Datsun",
            description: "The Skyline GT-R hardtop arrived in September 1972 but only lasted until March 1973, when Nissan ceased its production. The oil crisis saw many people preferring economy cars and high-performance sports cars were looked down upon. Nissan pulled out of Motor Racing, so there was no purpose to the GT-R. It was not officially exported anywhere, although Nissan contemplated exporting to Australia. Only 197 KPGC110 GT-Rs were ever sold in Japan,[32] through specialist Nissan Performance shops (before it was called NISMO). This was the last GT-R for 16 years until the BNR32 in 1989.",
            characteristics: "Power: 128hp Top speed: 175 km/h 0-100: 10,9s",
            logo: "DatsunLogoWB"),
        ModelData(
            id: 0,
            name: "Oldsmobile.usdz",
            modelName: "Oldsmobile",
            description: "The Oldsmobile Cutlass was a range of automobiles produced by General Motors' Oldsmobile division between 1961 and 1999. At its introduction, the Cutlass was Oldsmobile's entry-level model; it began as a unibody compact car, but saw its greatest success as a body-on-frame intermediate. The Cutlass was named after the type of sword, which was common during the Age of Sail.",
            characteristics: "Power: 240hp Top speed: 175 km/h 0-100: 11,2s",
            logo: "OldsmobileLogoWB"),
    ]
}
