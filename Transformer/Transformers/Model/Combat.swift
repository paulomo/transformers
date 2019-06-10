//
//  Combat.swift
//  Transformer
//
//  Created by MACPRO on 2019-06-06.
//  Copyright © 2019 Paul Ikhane. All rights reserved.
//

import Foundation

protocol TransformerMethods {
    
    // MARK: Methods
    // Ranking
    mutating func overallRanking(
        strength: Float,
        intelligence: Float,
        speed: Float,
        endurance: Float,
        firepower: Float) -> Float
    
    // MARK: Methods for Combat
    // sorting tranformers based on rank nto category
    mutating func sort(transformer: [Transformer]) -> (autobots: [Transformer?], decpticons: [Transformer?])
    
    // fight method
    mutating func fight(autobot: Transformer, decpticon: Transformer) -> Transformer?
    
}



extension TransformerMethods {
    
    // implementing overall Ranking method
    mutating func overallRanking(
        strength: Float,
        intelligence: Float,
        speed: Float,
        endurance: Float,
        firepower: Float) -> Float {
        return strength + intelligence + speed + endurance + firepower
    }
}
