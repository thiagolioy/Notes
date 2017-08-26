//
//  DiatonicHarmonySpec.swift
//  Notes
//
//  Created by Thiago Lioy on 26/08/17.
//  Copyright © 2017 com.tplioy. All rights reserved.
//

import Foundation
import Quick
import Nimble
@testable import Notes

class DiatonicHarmonySpec: QuickSpec {
    
    override func spec() {
        
        describe("Diatonic Harmony") {
            
            context("Major") {
                it("should have the expected chords in the key of C natural") {
                    let key = Note(name: .C, intonation: .natural)
                    let chords: [Chord] = DiatonicHarmony.major.chords(inKey: key)
                    let expectedChords: [Chord] = [
                        MajorChord(key: Note(name: .C, intonation: .natural)),
                        MinorChord(key: Note(name: .D, intonation: .natural)),
                        MinorChord(key: Note(name: .E, intonation: .natural)),
                        MajorChord(key: Note(name: .F, intonation: .natural)),
                        MajorChord(key: Note(name: .G, intonation: .natural)),
                        MinorChord(key: Note(name: .A, intonation: .natural)),
                        MinorChord(key: Note(name: .B, intonation: .natural))
                    ]
                    
                    expect(chords.count).to(equal(expectedChords.count))
                    
                    let chordNames = chords.map{$0.fullName()}
                    let expectedChordNames = expectedChords.map{$0.fullName()}
                    
                    expect(chordNames).to(equal(expectedChordNames))
                }
            }
            
            
        }
    }
    
}


