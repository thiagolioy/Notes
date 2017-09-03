//
//  MajorSeventhChordSpec.swift
//  Notes
//
//  Created by Thiago Lioy on 27/08/17.
//  Copyright © 2017 com.tplioy. All rights reserved.
//

import Foundation
import Quick
import Nimble
@testable import Notes

class MajorSeventhChordSpec: QuickSpec {
    
    override func spec() {
    
        describe("Major Seventh Chord") {
            
            var chord: MajorSeventhChord!
            beforeEach {
                let key = Note(name: .C, intonation: .natural)
                chord = MajorSeventhChord(key: key)
            }
            
            it("should have the expected symbol") {
                expect(chord.symbol).to(equal("7+"))
            }
            
            it("should have the expected intervals") {
                
                expect(chord.chordIntervals).to(equal([
                    .root,
                    .majorThird,
                    .perfectFifth,
                    .majorSeventh
                    ]))
            }
            
            context("in the key of C natural") {
                var rootChord: MajorSeventhChord!
                beforeEach {
                    let key = Note(name: .C, intonation: .natural)
                    rootChord = MajorSeventhChord(key: key)
                }
                
                it("should have the expected full name") {
                    expect(rootChord.fullName()).to(equal("C7+"))
                }
                
                it("should have the expected chord tones") {
                    let notes = rootChord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .C, intonation: .natural),
                        Note(name: .E, intonation: .natural),
                        Note(name: .G, intonation: .natural),
                        Note(name: .B, intonation: .natural)
                        ]))
                }
            }
            
            context("in the key of C sharp") {
                var rootChord: MajorSeventhChord!
                beforeEach {
                    let key = Note(name: .C, intonation: .sharp)
                    rootChord = MajorSeventhChord(key: key)
                }
                
                it("should have the expected full name") {
                    expect(rootChord.fullName()).to(equal("C♯7+"))
                }
                
                it("should have the expected chord tones") {
                    let notes = rootChord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .C, intonation: .sharp),
                        Note(name: .E, intonation: .sharp),
                        Note(name: .G, intonation: .sharp),
                        Note(name: .B, intonation: .sharp)
                        ]))
                }
            }
            
            context("in the key of D flat") {
                var rootChord: MajorSeventhChord!
                beforeEach {
                    let key = Note(name: .D, intonation: .flat)
                    rootChord = MajorSeventhChord(key: key)
                }
                
                it("should have the expected full name") {
                    expect(rootChord.fullName()).to(equal("D♭7+"))
                }
                
                it("should have the expected chord tones") {
                    let notes = rootChord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .D, intonation: .flat),
                        Note(name: .F, intonation: .natural),
                        Note(name: .A, intonation: .flat),
                        Note(name: .C, intonation: .natural)
                        ]))
                }
            }
            
            context("in the key of D natural") {
                var rootChord: MajorSeventhChord!
                beforeEach {
                    let key = Note(name: .D, intonation: .natural)
                    rootChord = MajorSeventhChord(key: key)
                }
                
                it("should have the expected full name") {
                    expect(rootChord.fullName()).to(equal("D7+"))
                }
                
                it("should have the expected chord tones") {
                    let notes = rootChord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .D, intonation: .natural),
                        Note(name: .F, intonation: .sharp),
                        Note(name: .A, intonation: .natural),
                        Note(name: .C, intonation: .sharp)
                        ]))
                }
            }
            
            context("in the key of D sharp") {
                var rootChord: MajorSeventhChord!
                beforeEach {
                    let key = Note(name: .D, intonation: .sharp)
                    rootChord = MajorSeventhChord(key: key)
                }
                
                it("should have the expected full name") {
                    expect(rootChord.fullName()).to(equal("D♯7+"))
                }
                
                it("should have the expected chord tones") {
                    let notes = rootChord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .D, intonation: .sharp),
                        Note(name: .F, intonation: .doubleSharp),
                        Note(name: .A, intonation: .sharp),
                        Note(name: .E, intonation: .doubleFlat)
                        ]))
                }
            }
            
            context("in the key of E flat") {
                var rootChord: MajorSeventhChord!
                beforeEach {
                    let key = Note(name: .E, intonation: .flat)
                    rootChord = MajorSeventhChord(key: key)
                }
                
                it("should have the expected full name") {
                    expect(rootChord.fullName()).to(equal("E♭7+"))
                }
                
                it("should have the expected chord tones") {
                    let notes = rootChord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .E, intonation: .flat),
                        Note(name: .G, intonation: .natural),
                        Note(name: .B, intonation: .flat),
                        Note(name: .D, intonation: .natural)
                        ]))
                }
            }
            
            context("in the key of E natural") {
                var rootChord: MajorSeventhChord!
                beforeEach {
                    let key = Note(name: .E, intonation: .natural)
                    rootChord = MajorSeventhChord(key: key)
                }
                
                it("should have the expected full name") {
                    expect(rootChord.fullName()).to(equal("E7+"))
                }
                
                it("should have the expected chord tones") {
                    let notes = rootChord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .E, intonation: .natural),
                        Note(name: .G, intonation: .sharp),
                        Note(name: .B, intonation: .natural),
                        Note(name: .D, intonation: .sharp)
                        ]))
                }
            }
            
            context("in the key of F natural") {
                var rootChord: MajorSeventhChord!
                beforeEach {
                    let key = Note(name: .F, intonation: .natural)
                    rootChord = MajorSeventhChord(key: key)
                }
                
                it("should have the expected full name") {
                    expect(rootChord.fullName()).to(equal("F7+"))
                }
                
                it("should have the expected chord tones") {
                    let notes = rootChord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .F, intonation: .natural),
                        Note(name: .A, intonation: .natural),
                        Note(name: .C, intonation: .natural),
                        Note(name: .E, intonation: .natural)
                        ]))
                }
            }
            
            context("in the key of F sharp") {
                var rootChord: MajorSeventhChord!
                beforeEach {
                    let key = Note(name: .F, intonation: .sharp)
                    rootChord = MajorSeventhChord(key: key)
                }
                
                it("should have the expected full name") {
                    expect(rootChord.fullName()).to(equal("F♯7+"))
                }
                
                it("should have the expected chord tones") {
                    let notes = rootChord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .F, intonation: .sharp),
                        Note(name: .A, intonation: .sharp),
                        Note(name: .C, intonation: .sharp),
                        Note(name: .E, intonation: .sharp)
                        ]))
                }
            }
            
            context("in the key of G flat") {
                var rootChord: MajorSeventhChord!
                beforeEach {
                    let key = Note(name: .G, intonation: .flat)
                    rootChord = MajorSeventhChord(key: key)
                }
                
                it("should have the expected full name") {
                    expect(rootChord.fullName()).to(equal("G♭7+"))
                }
                
                it("should have the expected chord tones") {
                    let notes = rootChord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .G, intonation: .flat),
                        Note(name: .B, intonation: .flat),
                        Note(name: .D, intonation: .flat),
                        Note(name: .F, intonation: .natural)
                        ]))
                }
            }
            
            context("in the key of G natural") {
                var rootChord: MajorSeventhChord!
                beforeEach {
                    let key = Note(name: .G, intonation: .natural)
                    rootChord = MajorSeventhChord(key: key)
                }
                
                it("should have the expected full name") {
                    expect(rootChord.fullName()).to(equal("G7+"))
                }
                
                it("should have the expected chord tones") {
                    let notes = rootChord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .G, intonation: .natural),
                        Note(name: .B, intonation: .natural),
                        Note(name: .D, intonation: .natural),
                        Note(name: .F, intonation: .sharp)
                        ]))
                }
            }
            
            context("in the key of G sharp") {
                var rootChord: MajorSeventhChord!
                beforeEach {
                    let key = Note(name: .G, intonation: .sharp)
                    rootChord = MajorSeventhChord(key: key)
                }
                
                it("should have the expected full name") {
                    expect(rootChord.fullName()).to(equal("G♯7+"))
                }
                
                it("should have the expected chord tones") {
                    let notes = rootChord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .G, intonation: .sharp),
                        Note(name: .B, intonation: .sharp),
                        Note(name: .D, intonation: .sharp),
                        Note(name: .F, intonation: .doubleSharp)
                        ]))
                }
            }
            
            context("in the key of A flat") {
                var rootChord: MajorSeventhChord!
                beforeEach {
                    let key = Note(name: .A, intonation: .flat)
                    rootChord = MajorSeventhChord(key: key)
                }
                
                it("should have the expected full name") {
                    expect(rootChord.fullName()).to(equal("A♭7+"))
                }
                
                it("should have the expected chord tones") {
                    let notes = rootChord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .A, intonation: .flat),
                        Note(name: .C, intonation: .natural),
                        Note(name: .E, intonation: .flat),
                        Note(name: .G, intonation: .natural)
                        ]))
                }
            }
            
            context("in the key of A natural") {
                var rootChord: MajorSeventhChord!
                beforeEach {
                    let key = Note(name: .A, intonation: .natural)
                    rootChord = MajorSeventhChord(key: key)
                }
                
                it("should have the expected full name") {
                    expect(rootChord.fullName()).to(equal("A7+"))
                }
                
                it("should have the expected chord tones") {
                    let notes = rootChord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .A, intonation: .natural),
                        Note(name: .C, intonation: .sharp),
                        Note(name: .E, intonation: .natural),
                        Note(name: .G, intonation: .sharp)
                        ]))
                }
            }
            
            context("in the key of A sharp") {
                var rootChord: MajorSeventhChord!
                beforeEach {
                    let key = Note(name: .A, intonation: .sharp)
                    rootChord = MajorSeventhChord(key: key)
                }
                
                it("should have the expected full name") {
                    expect(rootChord.fullName()).to(equal("A♯7+"))
                }
                
                it("should have the expected chord tones") {
                    let notes = rootChord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .A, intonation: .sharp),
                        Note(name: .E, intonation: .doubleFlat),
                        Note(name: .F, intonation: .natural),
                        Note(name: .A, intonation: .natural)
                        ]))
                }
            }
            
            context("in the key of B flat") {
                var rootChord: MajorSeventhChord!
                beforeEach {
                    let key = Note(name: .B, intonation: .flat)
                    rootChord = MajorSeventhChord(key: key)
                }
                
                it("should have the expected full name") {
                    expect(rootChord.fullName()).to(equal("B♭7+"))
                }
                
                it("should have the expected chord tones") {
                    let notes = rootChord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .B, intonation: .flat),
                        Note(name: .D, intonation: .natural),
                        Note(name: .F, intonation: .natural),
                        Note(name: .A, intonation: .natural)
                        ]))
                }
            }
            
            context("in the key of B natural") {
                var rootChord: MajorSeventhChord!
                beforeEach {
                    let key = Note(name: .B, intonation: .natural)
                    rootChord = MajorSeventhChord(key: key)
                }
                
                it("should have the expected full name") {
                    expect(rootChord.fullName()).to(equal("B7+"))
                }
                
                it("should have the expected chord tones") {
                    let notes = rootChord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .B, intonation: .natural),
                        Note(name: .D, intonation: .sharp),
                        Note(name: .F, intonation: .sharp),
                        Note(name: .A, intonation: .sharp)
                        ]))
                }
            }
            
        }
        
        
    }
    
}

