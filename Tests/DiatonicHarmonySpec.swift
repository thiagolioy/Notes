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
                        MajorSeventhChord(key: Note(name: .C, intonation: .natural)),
                        MinorSeventhChord(key: Note(name: .D, intonation: .natural)),
                        MinorSeventhChord(key: Note(name: .E, intonation: .natural)),
                        MajorSeventhChord(key: Note(name: .F, intonation: .natural)),
                        DominantSeventhChord(key: Note(name: .G, intonation: .natural)),
                        MinorSeventhChord(key: Note(name: .A, intonation: .natural)),
                        HalfDiminishedSeventhChord(key: Note(name: .B, intonation: .natural))
                    ]
                    
                    expect(chords.count).to(equal(expectedChords.count))
                    
                    let chordNames = chords.map{$0.fullName()}
                    let expectedChordNames = expectedChords.map{$0.fullName()}
                    
                    expect(chordNames).to(equal(expectedChordNames))
                }
            }
            
            context("Minor") {
                it("should have the expected chords in the key of C natural") {
                    let key = Note(name: .C, intonation: .natural)
                    let chords: [Chord] = DiatonicHarmony.minor.chords(inKey: key)
                    let expectedChords: [Chord] = [
                        MinorSeventhChord(key: Note(name: .C, intonation: .natural)),
                        HalfDiminishedSeventhChord(key: Note(name: .D, intonation: .natural)),
                        MajorSeventhChord(key: Note(name: .E, intonation: .flat)),
                        MinorSeventhChord(key: Note(name: .F, intonation: .natural)),
                        MinorSeventhChord(key: Note(name: .G, intonation: .natural)),
                        MajorSeventhChord(key: Note(name: .A, intonation: .flat)),
                        MajorSeventhChord(key: Note(name: .B, intonation: .flat))
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


