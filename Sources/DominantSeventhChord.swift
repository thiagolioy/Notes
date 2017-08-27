//
//  DominantSevenChord.swift
//  Notes
//
//  Created by Thiago Lioy on 27/08/17.
//  Copyright © 2017 com.tplioy. All rights reserved.
//

import Foundation

public struct DominantSeventhChord: Chord {
    public let symbol = "7"
    public let key: Note
    public let chordIntervals: [ChordIntervals] = [
        .root,
        .majorThird,
        .perfectFifth,
        .minorSeventh
    ]
    
    public init(key: Note) {
        self.key = key
    }
}
