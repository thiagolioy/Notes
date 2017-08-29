//
//  MajorChord.swift
//  Notes
//
//  Created by Thiago Lioy on 26/08/17.
//  Copyright © 2017 com.tplioy. All rights reserved.
//

import Foundation
import Quick
import Nimble
@testable import Notes

class MajorChordSpec: QuickSpec {
    
    override func spec() {
        
        describe("Major Chord") {
            
            context("in the key of C natural") {
                var chord: MajorChord!
                beforeEach {
                    let key = Note(name: .C, intonation: .natural)
                    chord = MajorChord(key: key)
                }
                
                it("should have the expected symbol") {
                    expect(chord.symbol).to(equal(""))
                }
                
                it("should have the expected full name") {
                    expect(chord.fullName()).to(equal("C"))
                }
                
                it("should have the expected intervals") {
                    
                    expect(chord.chordIntervals).to(equal([
                        .root,
                        .majorThird,
                        .perfectFifth
                        ]))
                }
                
                it("should have the expected chord tones in key of C Natural") {
                    let notes = chord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .C, intonation: .natural),
                        Note(name: .E, intonation: .natural),
                        Note(name: .G, intonation: .natural),
                        ]))
                }
            }
            
            context("in the key of C sharp") {
                var chord: MajorChord!
                beforeEach {
                    let key = Note(name: .C, intonation: .sharp)
                    chord = MajorChord(key: key)
                }
                
                it("should have the expected symbol") {
                    expect(chord.symbol).to(equal(""))
                }
                
                it("should have the expected full name") {
                    expect(chord.fullName()).to(equal("C#"))
                }
                
                it("should have the expected intervals") {
                    
                    expect(chord.chordIntervals).to(equal([
                        .root,
                        .majorThird,
                        .perfectFifth
                        ]))
                }
                
                it("should have the expected chord tones in key of C Sharp") {
                    let notes = chord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .C, intonation: .sharp),
                        Note(name: .F, intonation: .natural),
                        Note(name: .G, intonation: .sharp),
                        ]))
                }
            }
            context("in the key of D natural") {
                var chord: MajorChord!
                beforeEach {
                    let key = Note(name: .D, intonation: .natural)
                    chord = MajorChord(key: key)
                }
                
                it("should have the expected symbol") {
                    expect(chord.symbol).to(equal(""))
                }
                
                it("should have the expected full name") {
                    expect(chord.fullName()).to(equal("D"))
                }
                
                it("should have the expected intervals") {
                    
                    expect(chord.chordIntervals).to(equal([
                        .root,
                        .majorThird,
                        .perfectFifth
                        ]))
                }
                
                it("should have the expected chord tones in key of C Natural") {
                    let notes = chord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .D, intonation: .natural),
                        Note(name: .G, intonation: .natural),
                        Note(name: .B, intonation: .natural),
                        ]))
                }
            }
            context("in the key of D sharp") {
                var chord: MajorChord!
                beforeEach {
                    let key = Note(name: .D, intonation: .sharp)
                    chord = MajorChord(key: key)
                }
                
                it("should have the expected symbol") {
                    expect(chord.symbol).to(equal(""))
                }
                
                it("should have the expected full name") {
                    expect(chord.fullName()).to(equal("D#"))
                }
                
                it("should have the expected intervals") {
                    
                    expect(chord.chordIntervals).to(equal([
                        .root,
                        .majorThird,
                        .perfectFifth
                        ]))
                }
                
                it("should have the expected chord tones in key of C Natural") {
                    let notes = chord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .C, intonation: .natural),
                        Note(name: .E, intonation: .natural),
                        Note(name: .G, intonation: .natural),
                        ]))
                }
            }
            context("in the key of E natural") {
                var chord: MajorChord!
                beforeEach {
                    let key = Note(name: .E, intonation: .natural)
                    chord = MajorChord(key: key)
                }
                
                it("should have the expected symbol") {
                    expect(chord.symbol).to(equal(""))
                }
                
                it("should have the expected full name") {
                    expect(chord.fullName()).to(equal("E"))
                }
                
                it("should have the expected intervals") {
                    
                    expect(chord.chordIntervals).to(equal([
                        .root,
                        .majorThird,
                        .perfectFifth
                        ]))
                }
                
                it("should have the expected chord tones in key of C Natural") {
                    let notes = chord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .C, intonation: .natural),
                        Note(name: .E, intonation: .natural),
                        Note(name: .G, intonation: .natural),
                        ]))
                }
            }
            context("in the key of F natural") {
                var chord: MajorChord!
                beforeEach {
                    let key = Note(name: .F, intonation: .natural)
                    chord = MajorChord(key: key)
                }
                
                it("should have the expected symbol") {
                    expect(chord.symbol).to(equal(""))
                }
                
                it("should have the expected full name") {
                    expect(chord.fullName()).to(equal("F"))
                }
                
                it("should have the expected intervals") {
                    
                    expect(chord.chordIntervals).to(equal([
                        .root,
                        .majorThird,
                        .perfectFifth
                        ]))
                }
                
                it("should have the expected chord tones in key of C Natural") {
                    let notes = chord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .C, intonation: .natural),
                        Note(name: .E, intonation: .natural),
                        Note(name: .G, intonation: .natural),
                        ]))
                }
            }
            context("in the key of F sharp") {
                var chord: MajorChord!
                beforeEach {
                    let key = Note(name: .F, intonation: .sharp)
                    chord = MajorChord(key: key)
                }
                
                it("should have the expected symbol") {
                    expect(chord.symbol).to(equal(""))
                }
                
                it("should have the expected full name") {
                    expect(chord.fullName()).to(equal("F"))
                }
                
                it("should have the expected intervals") {
                    
                    expect(chord.chordIntervals).to(equal([
                        .root,
                        .majorThird,
                        .perfectFifth
                        ]))
                }
                
                it("should have the expected chord tones in key of F Natural") {
                    let notes = chord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .C, intonation: .natural),
                        Note(name: .E, intonation: .natural),
                        Note(name: .G, intonation: .natural),
                        ]))
                }
            }
            context("in the key of G natural") {
                var chord: MajorChord!
                beforeEach {
                    let key = Note(name: .G, intonation: .natural)
                    chord = MajorChord(key: key)
                }
                
                it("should have the expected symbol") {
                    expect(chord.symbol).to(equal(""))
                }
                
                it("should have the expected full name") {
                    expect(chord.fullName()).to(equal("G"))
                }
                
                it("should have the expected intervals") {
                    
                    expect(chord.chordIntervals).to(equal([
                        .root,
                        .majorThird,
                        .perfectFifth
                        ]))
                }
                
                it("should have the expected chord tones in key of G Natural") {
                    let notes = chord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .C, intonation: .natural),
                        Note(name: .E, intonation: .natural),
                        Note(name: .G, intonation: .natural),
                        ]))
                }
            }
            context("in the key of G sharp") {
                var chord: MajorChord!
                beforeEach {
                    let key = Note(name: .G, intonation: .sharp)
                    chord = MajorChord(key: key)
                }
                
                it("should have the expected symbol") {
                    expect(chord.symbol).to(equal(""))
                }
                
                it("should have the expected full name") {
                    expect(chord.fullName()).to(equal("G"))
                }
                
                it("should have the expected intervals") {
                    
                    expect(chord.chordIntervals).to(equal([
                        .root,
                        .majorThird,
                        .perfectFifth
                        ]))
                }
                
                it("should have the expected chord tones in key of G sharp") {
                    let notes = chord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .C, intonation: .natural),
                        Note(name: .E, intonation: .natural),
                        Note(name: .G, intonation: .natural),
                        ]))
                }
            }
            context("in the key of A natural") {
                var chord: MajorChord!
                beforeEach {
                    let key = Note(name: .A, intonation: .natural)
                    chord = MajorChord(key: key)
                }
                
                it("should have the expected symbol") {
                    expect(chord.symbol).to(equal(""))
                }
                
                it("should have the expected full name") {
                    expect(chord.fullName()).to(equal("A"))
                }
                
                it("should have the expected intervals") {
                    
                    expect(chord.chordIntervals).to(equal([
                        .root,
                        .majorThird,
                        .perfectFifth
                        ]))
                }
                
                it("should have the expected chord tones in key of A Natural") {
                    let notes = chord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .C, intonation: .natural),
                        Note(name: .E, intonation: .natural),
                        Note(name: .G, intonation: .natural),
                        ]))
                }
            }
            context("in the key of A sharp") {
                var chord: MajorChord!
                beforeEach {
                    let key = Note(name: .A, intonation: .sharp)
                    chord = MajorChord(key: key)
                }
                
                it("should have the expected symbol") {
                    expect(chord.symbol).to(equal(""))
                }
                
                it("should have the expected full name") {
                    expect(chord.fullName()).to(equal("A"))
                }
                
                it("should have the expected intervals") {
                    
                    expect(chord.chordIntervals).to(equal([
                        .root,
                        .majorThird,
                        .perfectFifth
                        ]))
                }
                
                it("should have the expected chord tones in key of A Sharp") {
                    let notes = chord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .C, intonation: .natural),
                        Note(name: .E, intonation: .natural),
                        Note(name: .G, intonation: .natural),
                        ]))
                }
            }
            context("in the key of B natural") {
                var chord: MajorChord!
                beforeEach {
                    let key = Note(name: .B, intonation: .natural)
                    chord = MajorChord(key: key)
                }
                
                it("should have the expected symbol") {
                    expect(chord.symbol).to(equal(""))
                }
                
                it("should have the expected full name") {
                    expect(chord.fullName()).to(equal("B"))
                }
                
                it("should have the expected intervals") {
                    
                    expect(chord.chordIntervals).to(equal([
                        .root,
                        .majorThird,
                        .perfectFifth
                        ]))
                }
                
                it("should have the expected chord tones in key of B Natural") {
                    let notes = chord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .C, intonation: .natural),
                        Note(name: .E, intonation: .natural),
                        Note(name: .G, intonation: .natural),
                        ]))
                }
            }
            
            
        }
    }
    
}

