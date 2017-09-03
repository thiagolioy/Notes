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
                    expect(rootChord.fullName()).to(equal("C"))
                }
                
                it("should have the expected chord tones") {
                    let notes = rootChord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .C, intonation: .natural),
                        Note(name: .E, intonation: .natural),
                        Note(name: .G, intonation: .natural),
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
                    expect(rootChord.fullName()).to(equal("C"))
                }
                
                it("should have the expected chord tones") {
                    let notes = rootChord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .C, intonation: .natural),
                        Note(name: .E, intonation: .natural),
                        Note(name: .G, intonation: .natural),
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
                    expect(rootChord.fullName()).to(equal("D"))
                }
                
                it("should have the expected chord tones") {
                    let notes = rootChord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .C, intonation: .natural),
                        Note(name: .E, intonation: .natural),
                        Note(name: .G, intonation: .natural),
                        ]))
                }
            }
            
            context("in the key of D sharp") {
                var rootChord: MajorSeventhChord!
                beforeEach {
                    let key = Note(name: .D, intonation: .natural)
                    rootChord = MajorSeventhChord(key: key)
                }
                
                it("should have the expected full name") {
                    expect(rootChord.fullName()).to(equal("D"))
                }
                
                it("should have the expected chord tones") {
                    let notes = rootChord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .C, intonation: .natural),
                        Note(name: .E, intonation: .natural),
                        Note(name: .G, intonation: .natural),
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
                    expect(rootChord.fullName()).to(equal("C"))
                }
                
                it("should have the expected chord tones") {
                    let notes = rootChord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .C, intonation: .natural),
                        Note(name: .E, intonation: .natural),
                        Note(name: .G, intonation: .natural),
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
                    expect(rootChord.fullName()).to(equal("C"))
                }
                
                it("should have the expected chord tones") {
                    let notes = rootChord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .C, intonation: .natural),
                        Note(name: .E, intonation: .natural),
                        Note(name: .G, intonation: .natural),
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
                    expect(rootChord.fullName()).to(equal("C"))
                }
                
                it("should have the expected chord tones") {
                    let notes = rootChord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .C, intonation: .natural),
                        Note(name: .E, intonation: .natural),
                        Note(name: .G, intonation: .natural),
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
                    expect(rootChord.fullName()).to(equal("C"))
                }
                
                it("should have the expected chord tones") {
                    let notes = rootChord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .C, intonation: .natural),
                        Note(name: .E, intonation: .natural),
                        Note(name: .G, intonation: .natural),
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
                    expect(rootChord.fullName()).to(equal("C"))
                }
                
                it("should have the expected chord tones") {
                    let notes = rootChord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .C, intonation: .natural),
                        Note(name: .E, intonation: .natural),
                        Note(name: .G, intonation: .natural),
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
                    expect(rootChord.fullName()).to(equal("C"))
                }
                
                it("should have the expected chord tones") {
                    let notes = rootChord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .C, intonation: .natural),
                        Note(name: .E, intonation: .natural),
                        Note(name: .G, intonation: .natural),
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
                    expect(rootChord.fullName()).to(equal("C"))
                }
                
                it("should have the expected chord tones") {
                    let notes = rootChord.chordTones()
                    expect(notes).to(equal([
                        Note(name: .C, intonation: .natural),
                        Note(name: .E, intonation: .natural),
                        Note(name: .G, intonation: .natural),
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
                    expect(rootChord.fullName()).to(equal("C"))
                }
                
                it("should have the expected chord tones") {
                    let notes = rootChord.chordTones()
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

