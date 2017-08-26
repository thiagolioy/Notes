//
//  DiatonicHarmony.swift
//  Notes
//
//  Created by Thiago Lioy on 26/08/17.
//  Copyright © 2017 com.tplioy. All rights reserved.
//

import Foundation

public enum DiatonicHarmony {
    case major
//    case minor
    
    func chords(inKey key: Note) -> [Chord] {
        switch self {
        case .major:
            let mode = IonianMode()
            let notes = mode.scaleNotes(inKey: key)
            let chordTypes: [Chord.Type] = [
                MajorChord.self,
                MinorChord.self,
                MinorChord.self,
                MajorChord.self,
                MajorChord.self,
                MinorChord.self,
                MinorChord.self
            ]
            
//            if notes.count != chordTypes.count {
//                fatalError(message: "Should have the same number of notes and chord types")
//            }
            var chords: [Chord] = []
            for (index, chordType) in chordTypes.enumerated() {
                let note = notes[index]
                let chord: Chord = chordType.init(key: note)
                chords.append(chord)
            }
            return chords
            
//        case .minor:
            
        }
    }
    
}
