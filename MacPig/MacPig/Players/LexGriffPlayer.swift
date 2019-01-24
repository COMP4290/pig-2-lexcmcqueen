//
//  LexGriffPlayer.swift
//  MacPig
//
//  Created by Student on 1/24/19.
//  Copyright © 2019 Michael Thornton. All rights reserved.
//

import Foundation

class LexGriffPlayer: PlayerProtocol {
    
    let holdCap = 21
    
    
    func willPlayToTotalOf(_ goal: Int, withTurnScoreOf turnScore: Int, withPlayerTotal currentTotal: Int, againstOpponentWith opponentTotal: Int) -> Bool {
        if (currentTotal + turnScore > goal){
            return false
        } else if (currentTotal + turnScore >= 97){
            return true
        } else if (opponentTotal - currentTotal - turnScore > 20){
            return true
        } else if (((currentTotal + turnScore) - opponentTotal) > 30 && turnScore >= 10){
            return false
        } else if (turnScore < holdCap){
            return true
        } else {
            return false
        }
    }
}


extension LexGriffPlayer: CustomStringConvertible {
    
    var description: String {
        return "Lexi and Griffen"
    }
    
} // end extension
