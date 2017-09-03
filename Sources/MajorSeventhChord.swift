//
//  MajorSevenChord.swift
//  Notes
//
//  Created by Thiago Lioy on 27/08/17.
//  Copyright © 2017 com.tplioy. All rights reserved.
//

import Foundation

public struct MajorSeventhChord: Chord {
    public let symbol = "7+"
    public let key: Note
    public let motherScale: Scale
    public let chordIntervals: [ChordIntervals] = [
        .root,
        .majorThird,
        .perfectFifth,
        .majorSeventh
    ]
    
    public init(key: Note) {
        self.key = key
        motherScale = IonianMode(key: key)
    }
    
    public func chordTones() -> [Note] {
        let notes = motherScale.scaleNotes()
        return [
            notes[0],
            notes[2],
            notes[4],
            notes[6]
        ]
    }
}
