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
    case minor
    
    func chords(inKey key: Note) -> [Chord] {
        switch self {
        case .major:
            let mode = IonianMode(key: key)
            let notes = mode.scaleNotes()
            let chordTypes: [Chord.Type] = [
                MajorSeventhChord.self,
                MinorSeventhChord.self,
                MinorSeventhChord.self,
                MajorSeventhChord.self,
                DominantSeventhChord.self,
                MinorSeventhChord.self,
                HalfDiminishedSeventhChord.self
            ]
            
            return chords(from: notes, with: chordTypes)
            
        case .minor:
            let mode = AeolianMode(key: key)
            let notes = mode.scaleNotes()
            let chordTypes: [Chord.Type] = [
                MinorSeventhChord.self,
                HalfDiminishedSeventhChord.self,
                MajorSeventhChord.self,
                MinorSeventhChord.self,
                MinorSeventhChord.self,
                MajorSeventhChord.self,
                MajorSeventhChord.self
            ]
            
            return chords(from: notes, with: chordTypes)
        }
    }
    
    private func chords(from notes: [Note], with types: [Chord.Type]) -> [Chord] {
        var chords: [Chord] = []
        for (index, chordType) in types.enumerated() {
            let note = notes[index]
            let chord: Chord = chordType.init(key: note)
            chords.append(chord)
        }
        return chords
    }
    
}
