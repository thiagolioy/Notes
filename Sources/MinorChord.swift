//
//  MinorChord.swift
//  Notes
//
//  Created by Thiago Lioy on 26/08/17.
//  Copyright © 2017 com.tplioy. All rights reserved.
//

import Foundation

public struct MinorChord: Chord {
    public let symbol = "m"
    public let key: Note
    public let chordIntervals: [ChordIntervals] = [
        .root,
        .minorThird,
        .perfectFifth
    ]
    
    public init(key: Note) {
        self.key = key
    }
}
