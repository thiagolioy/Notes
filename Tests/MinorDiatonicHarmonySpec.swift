//
//  MinorDiatonicHarmonySpec.swift
//  Notes
//
//  Created by Thiago Lioy on 02/09/17.
//  Copyright © 2017 com.tplioy. All rights reserved.
//

import Foundation
import Quick
import Nimble
@testable import Notes

class MinorDiatonicHarmonySpec: QuickSpec {
    
    override func spec() {
        
        describe("Minor Diatonic Harmony") {
            
            context("C natural") {

                it("should have the expected chords") {
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
            
            context("G natural") {
                
                it("should have the expected chords") {
                    let key = Note(name: .G, intonation: .natural)
                    let chords: [Chord] = DiatonicHarmony.minor.chords(inKey: key)
                    let expectedChords: [Chord] = [
                        MinorSeventhChord(key: Note(name: .G, intonation: .natural)),
                        HalfDiminishedSeventhChord(key: Note(name: .A, intonation: .natural)),
                        MajorSeventhChord(key: Note(name: .B, intonation: .flat)),
                        MinorSeventhChord(key: Note(name: .C, intonation: .natural)),
                        MinorSeventhChord(key: Note(name: .D, intonation: .natural)),
                        MajorSeventhChord(key: Note(name: .E, intonation: .flat)),
                        MajorSeventhChord(key: Note(name: .F, intonation: .natural))
                    ]
                    
                    expect(chords.count).to(equal(expectedChords.count))
                    
                    let chordNames = chords.map{$0.fullName()}
                    let expectedChordNames = expectedChords.map{$0.fullName()}
                    
                    expect(chordNames).to(equal(expectedChordNames))
                }
            }
            
            context("D natural") {
                
                it("should have the expected chords") {
                    let key = Note(name: .D, intonation: .natural)
                    let chords: [Chord] = DiatonicHarmony.minor.chords(inKey: key)
                    let expectedChords: [Chord] = [
                        MinorSeventhChord(key: Note(name: .D, intonation: .natural)),
                        HalfDiminishedSeventhChord(key: Note(name: .E, intonation: .natural)),
                        MajorSeventhChord(key: Note(name: .F, intonation: .natural)),
                        MinorSeventhChord(key: Note(name: .G, intonation: .natural)),
                        MinorSeventhChord(key: Note(name: .A, intonation: .natural)),
                        MajorSeventhChord(key: Note(name: .B, intonation: .flat)),
                        MajorSeventhChord(key: Note(name: .C, intonation: .natural))
                    ]
                    
                    expect(chords.count).to(equal(expectedChords.count))
                    
                    let chordNames = chords.map{$0.fullName()}
                    let expectedChordNames = expectedChords.map{$0.fullName()}
                    
                    expect(chordNames).to(equal(expectedChordNames))
                }
            }
            
            context("A natural") {
                
                it("should have the expected chords") {
                    let key = Note(name: .A, intonation: .natural)
                    let chords: [Chord] = DiatonicHarmony.minor.chords(inKey: key)
                    let expectedChords: [Chord] = [
                        MinorSeventhChord(key: Note(name: .A, intonation: .natural)),
                        HalfDiminishedSeventhChord(key: Note(name: .B, intonation: .natural)),
                        MajorSeventhChord(key: Note(name: .C, intonation: .natural)),
                        MinorSeventhChord(key: Note(name: .D, intonation: .natural)),
                        MinorSeventhChord(key: Note(name: .E, intonation: .natural)),
                        MajorSeventhChord(key: Note(name: .F, intonation: .natural)),
                        MajorSeventhChord(key: Note(name: .G, intonation: .natural))
                    ]
                    
                    expect(chords.count).to(equal(expectedChords.count))
                    
                    let chordNames = chords.map{$0.fullName()}
                    let expectedChordNames = expectedChords.map{$0.fullName()}
                    
                    expect(chordNames).to(equal(expectedChordNames))
                }
            }
            
            context("E natural") {
                
                it("should have the expected chords") {
                    let key = Note(name: .E, intonation: .natural)
                    let chords: [Chord] = DiatonicHarmony.minor.chords(inKey: key)
                    let expectedChords: [Chord] = [
                        MinorSeventhChord(key: Note(name: .E, intonation: .natural)),
                        HalfDiminishedSeventhChord(key: Note(name: .F, intonation: .sharp)),
                        MajorSeventhChord(key: Note(name: .G, intonation: .natural)),
                        MinorSeventhChord(key: Note(name: .A, intonation: .natural)),
                        MinorSeventhChord(key: Note(name: .B, intonation: .natural)),
                        MajorSeventhChord(key: Note(name: .C, intonation: .natural)),
                        MajorSeventhChord(key: Note(name: .D, intonation: .natural))
                    ]
                    
                    expect(chords.count).to(equal(expectedChords.count))
                    
                    let chordNames = chords.map{$0.fullName()}
                    let expectedChordNames = expectedChords.map{$0.fullName()}
                    
                    expect(chordNames).to(equal(expectedChordNames))
                }
            }
            
            context("B natural") {
                
                it("should have the expected chords") {
                    let key = Note(name: .B, intonation: .natural)
                    let chords: [Chord] = DiatonicHarmony.minor.chords(inKey: key)
                    let expectedChords: [Chord] = [
                        MinorSeventhChord(key: Note(name: .B, intonation: .natural)),
                        HalfDiminishedSeventhChord(key: Note(name: .C, intonation: .sharp)),
                        MajorSeventhChord(key: Note(name: .D, intonation: .natural)),
                        MinorSeventhChord(key: Note(name: .E, intonation: .natural)),
                        MinorSeventhChord(key: Note(name: .F, intonation: .sharp)),
                        MajorSeventhChord(key: Note(name: .G, intonation: .natural)),
                        MajorSeventhChord(key: Note(name: .A, intonation: .natural))
                    ]
                    
                    expect(chords.count).to(equal(expectedChords.count))
                    
                    let chordNames = chords.map{$0.fullName()}
                    let expectedChordNames = expectedChords.map{$0.fullName()}
                    
                    expect(chordNames).to(equal(expectedChordNames))
                }
            }
            
            context("F sharp") {
                
                it("should have the expected chords") {
                    let key = Note(name: .F, intonation: .sharp)
                    let chords: [Chord] = DiatonicHarmony.minor.chords(inKey: key)
                    let expectedChords: [Chord] = [
                        MinorSeventhChord(key: Note(name: .F, intonation: .sharp)),
                        HalfDiminishedSeventhChord(key: Note(name: .G, intonation: .sharp)),
                        MajorSeventhChord(key: Note(name: .A, intonation: .natural)),
                        MinorSeventhChord(key: Note(name: .B, intonation: .natural)),
                        MinorSeventhChord(key: Note(name: .C, intonation: .sharp)),
                        MajorSeventhChord(key: Note(name: .D, intonation: .natural)),
                        MajorSeventhChord(key: Note(name: .E, intonation: .natural))
                    ]
                    
                    expect(chords.count).to(equal(expectedChords.count))
                    
                    let chordNames = chords.map{$0.fullName()}
                    let expectedChordNames = expectedChords.map{$0.fullName()}
                    
                    expect(chordNames).to(equal(expectedChordNames))
                }
            }
            
            context("G flat") {
                
                it("should have the expected chords") {
                    let key = Note(name: .G, intonation: .flat)
                    let chords: [Chord] = DiatonicHarmony.minor.chords(inKey: key)
                    let expectedChords: [Chord] = [
                        MinorSeventhChord(key: Note(name: .G, intonation: .flat)),
                        HalfDiminishedSeventhChord(key: Note(name: .A, intonation: .flat)),
                        MajorSeventhChord(key: Note(name: .B, intonation: .doubleFlat)),
                        MinorSeventhChord(key: Note(name: .C, intonation: .flat)),
                        MinorSeventhChord(key: Note(name: .D, intonation: .flat)),
                        MajorSeventhChord(key: Note(name: .E, intonation: .doubleFlat)),
                        MajorSeventhChord(key: Note(name: .F, intonation: .flat))
                    ]
                    
                    expect(chords.count).to(equal(expectedChords.count))
                    
                    let chordNames = chords.map{$0.fullName()}
                    let expectedChordNames = expectedChords.map{$0.fullName()}
                    
                    expect(chordNames).to(equal(expectedChordNames))
                }
            }
            
            context("D flat") {
                
                it("should have the expected chords") {
                    let key = Note(name: .D, intonation: .flat)
                    let chords: [Chord] = DiatonicHarmony.minor.chords(inKey: key)
                    let expectedChords: [Chord] = [
                        MinorSeventhChord(key: Note(name: .D, intonation: .flat)),
                        HalfDiminishedSeventhChord(key: Note(name: .E, intonation: .flat)),
                        MajorSeventhChord(key: Note(name: .F, intonation: .flat)),
                        MinorSeventhChord(key: Note(name: .G, intonation: .flat)),
                        MinorSeventhChord(key: Note(name: .A, intonation: .flat)),
                        MajorSeventhChord(key: Note(name: .B, intonation: .doubleFlat)),
                        MajorSeventhChord(key: Note(name: .C, intonation: .flat))
                    ]
                    
                    expect(chords.count).to(equal(expectedChords.count))
                    
                    let chordNames = chords.map{$0.fullName()}
                    let expectedChordNames = expectedChords.map{$0.fullName()}
                    
                    expect(chordNames).to(equal(expectedChordNames))
                }
            }
            
            
            
            context("A flat") {
                
                it("should have the expected chords") {
                    let key = Note(name: .A, intonation: .flat)
                    let chords: [Chord] = DiatonicHarmony.minor.chords(inKey: key)
                    let expectedChords: [Chord] = [
                        MinorSeventhChord(key: Note(name: .A, intonation: .flat)),
                        HalfDiminishedSeventhChord(key: Note(name: .B, intonation: .flat)),
                        MajorSeventhChord(key: Note(name: .C, intonation: .flat)),
                        MinorSeventhChord(key: Note(name: .D, intonation: .flat)),
                        MinorSeventhChord(key: Note(name: .E, intonation: .flat)),
                        MajorSeventhChord(key: Note(name: .F, intonation: .flat)),
                        MajorSeventhChord(key: Note(name: .G, intonation: .flat))
                    ]
                    
                    expect(chords.count).to(equal(expectedChords.count))
                    
                    let chordNames = chords.map{$0.fullName()}
                    let expectedChordNames = expectedChords.map{$0.fullName()}
                    
                    expect(chordNames).to(equal(expectedChordNames))
                }
            }
            
            context("E flat") {
                
                it("should have the expected chords") {
                    let key = Note(name: .E, intonation: .flat)
                    let chords: [Chord] = DiatonicHarmony.minor.chords(inKey: key)
                    let expectedChords: [Chord] = [
                        MinorSeventhChord(key: Note(name: .E, intonation: .flat)),
                        HalfDiminishedSeventhChord(key: Note(name: .F, intonation: .natural)),
                        MajorSeventhChord(key: Note(name: .G, intonation: .flat)),
                        MinorSeventhChord(key: Note(name: .A, intonation: .flat)),
                        MinorSeventhChord(key: Note(name: .B, intonation: .flat)),
                        MajorSeventhChord(key: Note(name: .C, intonation: .flat)),
                        MajorSeventhChord(key: Note(name: .D, intonation: .flat))
                    ]
                    
                    expect(chords.count).to(equal(expectedChords.count))
                    
                    let chordNames = chords.map{$0.fullName()}
                    let expectedChordNames = expectedChords.map{$0.fullName()}
                    
                    expect(chordNames).to(equal(expectedChordNames))
                }
            }
            
            
            
            context("B flat") {
                it("should have the expected chords") {
                    let key = Note(name: .B, intonation: .flat)
                    let chords: [Chord] = DiatonicHarmony.minor.chords(inKey: key)
                    let expectedChords: [Chord] = [
                        MinorSeventhChord(key: Note(name: .B, intonation: .flat)),
                        HalfDiminishedSeventhChord(key: Note(name: .C, intonation: .natural)),
                        MajorSeventhChord(key: Note(name: .D, intonation: .flat)),
                        MinorSeventhChord(key: Note(name: .E, intonation: .flat)),
                        MinorSeventhChord(key: Note(name: .F, intonation: .natural)),
                        MajorSeventhChord(key: Note(name: .G, intonation: .flat)),
                        MajorSeventhChord(key: Note(name: .A, intonation: .flat))
                    ]
                    
                    expect(chords.count).to(equal(expectedChords.count))
                    
                    let chordNames = chords.map{$0.fullName()}
                    let expectedChordNames = expectedChords.map{$0.fullName()}
                    
                    expect(chordNames).to(equal(expectedChordNames))
                }
            }
            
            
            
            context("F natural") {
                it("should have the expected chords") {
                    let key = Note(name: .F, intonation: .natural)
                    let chords: [Chord] = DiatonicHarmony.minor.chords(inKey: key)
                    let expectedChords: [Chord] = [
                        MinorSeventhChord(key: Note(name: .F, intonation: .natural)),
                        HalfDiminishedSeventhChord(key: Note(name: .G, intonation: .natural)),
                        MajorSeventhChord(key: Note(name: .A, intonation: .flat)),
                        MinorSeventhChord(key: Note(name: .B, intonation: .flat)),
                        MinorSeventhChord(key: Note(name: .C, intonation: .natural)),
                        MajorSeventhChord(key: Note(name: .D, intonation: .flat)),
                        MajorSeventhChord(key: Note(name: .E, intonation: .flat))
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



