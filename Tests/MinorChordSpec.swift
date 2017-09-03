//
//  MinorChordSpec.swift
//  Notes
//
//  Created by Thiago Lioy on 26/08/17.
//  Copyright © 2017 com.tplioy. All rights reserved.
//

import Foundation
import Quick
import Nimble
@testable import Notes

class MinorChordSpec: QuickSpec {
    
    override func spec() {
        
        describe("Minor Chord") {
            
            var chord: MinorChord!
            beforeEach {
                let key = Note(name: .C, intonation: .natural)
                chord = MinorChord(key: key)
            }
            
            it("should have the expected symbol") {
                expect(chord.symbol).to(equal("m"))
            }
            
            it("should have the expected intervals") {
                
                expect(chord.chordIntervals).to(equal([
                    .root,
                    .minorThird,
                    .perfectFifth
                    ]))
            }
            
            context("in the key of C natural") {
                var rootChord: MinorChord!
                beforeEach {
                    let key = Note(name: .C, intonation: .natural)
                    rootChord = MinorChord(key: key)
                }
                
                it("should have the expected full name") {
                    expect(rootChord.fullName()).to(equal("Cm"))
                }
                
                it("should have the expected chord tones") {
                    let notes = rootChord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .C, intonation: .natural),
                        Note(name: .E, intonation: .flat),
                        Note(name: .G, intonation: .natural),
                        ]))
                }
            }
            
            context("in the key of C sharp") {
                var rootChord: MinorChord!
                beforeEach {
                    let key = Note(name: .C, intonation: .sharp)
                    rootChord = MinorChord(key: key)
                }
                
                it("should have the expected full name") {
                    expect(rootChord.fullName()).to(equal("C♯m"))
                }
                
                it("should have the expected chord tones") {
                    let notes = rootChord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .C, intonation: .sharp),
                        Note(name: .E, intonation: .natural),
                        Note(name: .G, intonation: .sharp),
                        ]))
                }
            }
            
            context("in the key of D flat") {
                var rootChord: MinorChord!
                beforeEach {
                    let key = Note(name: .D, intonation: .flat)
                    rootChord = MinorChord(key: key)
                }
                
                it("should have the expected full name") {
                    expect(rootChord.fullName()).to(equal("D♭m"))
                }
                
                it("should have the expected chord tones") {
                    let notes = rootChord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .D, intonation: .flat),
                        Note(name: .F, intonation: .flat),
                        Note(name: .A, intonation: .flat),
                        ]))
                }
            }
            
            context("in the key of D natural") {
                var rootChord: MinorChord!
                beforeEach {
                    let key = Note(name: .D, intonation: .natural)
                    rootChord = MinorChord(key: key)
                }
                
                it("should have the expected full name") {
                    expect(rootChord.fullName()).to(equal("Dm"))
                }
                
                it("should have the expected chord tones") {
                    let notes = rootChord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .D, intonation: .natural),
                        Note(name: .F, intonation: .natural),
                        Note(name: .A, intonation: .natural),
                        ]))
                }
            }
            
            context("in the key of D sharp") {
                var rootChord: MinorChord!
                beforeEach {
                    let key = Note(name: .D, intonation: .sharp)
                    rootChord = MinorChord(key: key)
                }
                
                it("should have the expected full name") {
                    expect(rootChord.fullName()).to(equal("D♯m"))
                }
                
                it("should have the expected chord tones") {
                    let notes = rootChord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .D, intonation: .sharp),
                        Note(name: .F, intonation: .sharp),
                        Note(name: .A, intonation: .sharp),
                        ]))
                }
            }
            
            context("in the key of E flat") {
                var rootChord: MinorChord!
                beforeEach {
                    let key = Note(name: .E, intonation: .flat)
                    rootChord = MinorChord(key: key)
                }
                
                it("should have the expected full name") {
                    expect(rootChord.fullName()).to(equal("E♭m"))
                }
                
                it("should have the expected chord tones") {
                    let notes = rootChord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .E, intonation: .flat),
                        Note(name: .G, intonation: .flat),
                        Note(name: .B, intonation: .flat),
                        ]))
                }
            }
            
            context("in the key of E natural") {
                var rootChord: MinorChord!
                beforeEach {
                    let key = Note(name: .E, intonation: .natural)
                    rootChord = MinorChord(key: key)
                }
                
                it("should have the expected full name") {
                    expect(rootChord.fullName()).to(equal("Em"))
                }
                
                it("should have the expected chord tones") {
                    let notes = rootChord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .E, intonation: .natural),
                        Note(name: .G, intonation: .natural),
                        Note(name: .B, intonation: .natural),
                        ]))
                }
            }
            
            context("in the key of F natural") {
                var rootChord: MinorChord!
                beforeEach {
                    let key = Note(name: .F, intonation: .natural)
                    rootChord = MinorChord(key: key)
                }
                
                it("should have the expected full name") {
                    expect(rootChord.fullName()).to(equal("Fm"))
                }
                
                it("should have the expected chord tones") {
                    let notes = rootChord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .F, intonation: .natural),
                        Note(name: .A, intonation: .flat),
                        Note(name: .C, intonation: .natural),
                        ]))
                }
            }
            
            context("in the key of F sharp") {
                var rootChord: MinorChord!
                beforeEach {
                    let key = Note(name: .F, intonation: .sharp)
                    rootChord = MinorChord(key: key)
                }
                
                it("should have the expected full name") {
                    expect(rootChord.fullName()).to(equal("F♯m"))
                }
                
                it("should have the expected chord tones") {
                    let notes = rootChord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .F, intonation: .sharp),
                        Note(name: .A, intonation: .natural),
                        Note(name: .C, intonation: .sharp),
                        ]))
                }
            }
            
            context("in the key of G flat") {
                var rootChord: MinorChord!
                beforeEach {
                    let key = Note(name: .G, intonation: .flat)
                    rootChord = MinorChord(key: key)
                }
                
                it("should have the expected full name") {
                    expect(rootChord.fullName()).to(equal("G♭m"))
                }
                
                it("should have the expected chord tones") {
                    let notes = rootChord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .G, intonation: .flat),
                        Note(name: .B, intonation: .doubleFlat),
                        Note(name: .D, intonation: .flat),
                        ]))
                }
            }
            
            context("in the key of G natural") {
                var rootChord: MinorChord!
                beforeEach {
                    let key = Note(name: .G, intonation: .natural)
                    rootChord = MinorChord(key: key)
                }
                
                it("should have the expected full name") {
                    expect(rootChord.fullName()).to(equal("Gm"))
                }
                
                it("should have the expected chord tones") {
                    let notes = rootChord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .G, intonation: .natural),
                        Note(name: .B, intonation: .flat),
                        Note(name: .D, intonation: .natural),
                        ]))
                }
            }
            
            context("in the key of G sharp") {
                var rootChord: MinorChord!
                beforeEach {
                    let key = Note(name: .G, intonation: .sharp)
                    rootChord = MinorChord(key: key)
                }
                
                it("should have the expected full name") {
                    expect(rootChord.fullName()).to(equal("G♯m"))
                }
                
                it("should have the expected chord tones") {
                    let notes = rootChord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .G, intonation: .sharp),
                        Note(name: .B, intonation: .natural),
                        Note(name: .D, intonation: .sharp),
                        ]))
                }
            }
            
            context("in the key of A flat") {
                var rootChord: MinorChord!
                beforeEach {
                    let key = Note(name: .A, intonation: .flat)
                    rootChord = MinorChord(key: key)
                }
                
                it("should have the expected full name") {
                    expect(rootChord.fullName()).to(equal("A♭m"))
                }
                
                it("should have the expected chord tones") {
                    let notes = rootChord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .A, intonation: .flat),
                        Note(name: .C, intonation: .flat),
                        Note(name: .E, intonation: .flat),
                        ]))
                }
            }
            
            context("in the key of A natural") {
                var rootChord: MinorChord!
                beforeEach {
                    let key = Note(name: .A, intonation: .natural)
                    rootChord = MinorChord(key: key)
                }
                
                it("should have the expected full name") {
                    expect(rootChord.fullName()).to(equal("Am"))
                }
                
                it("should have the expected chord tones") {
                    let notes = rootChord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .A, intonation: .natural),
                        Note(name: .C, intonation: .natural),
                        Note(name: .E, intonation: .natural),
                        ]))
                }
            }
            
            context("in the key of A sharp") {
                var rootChord: MinorChord!
                beforeEach {
                    let key = Note(name: .A, intonation: .sharp)
                    rootChord = MinorChord(key: key)
                }
                
                it("should have the expected full name") {
                    expect(rootChord.fullName()).to(equal("A♯m"))
                }
                
                it("should have the expected chord tones") {
                    let notes = rootChord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .A, intonation: .sharp),
                        Note(name: .C, intonation: .sharp),
                        Note(name: .E, intonation: .sharp),
                        ]))
                }
            }
            
            context("in the key of B flat") {
                var rootChord: MinorChord!
                beforeEach {
                    let key = Note(name: .B, intonation: .flat)
                    rootChord = MinorChord(key: key)
                }
                
                it("should have the expected full name") {
                    expect(rootChord.fullName()).to(equal("B♭m"))
                }
                
                it("should have the expected chord tones") {
                    let notes = rootChord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .B, intonation: .flat),
                        Note(name: .D, intonation: .flat),
                        Note(name: .F, intonation: .natural),
                        ]))
                }
            }
            
            context("in the key of B natural") {
                var rootChord: MinorChord!
                beforeEach {
                    let key = Note(name: .B, intonation: .natural)
                    rootChord = MinorChord(key: key)
                }
                
                it("should have the expected full name") {
                    expect(rootChord.fullName()).to(equal("Bm"))
                }
                
                it("should have the expected chord tones") {
                    let notes = rootChord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .B, intonation: .natural),
                        Note(name: .D, intonation: .natural),
                        Note(name: .F, intonation: .sharp),
                        ]))
                }
            }
            
        }
    }
    
}
