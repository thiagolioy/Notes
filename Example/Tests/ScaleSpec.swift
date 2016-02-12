//
//  ScaleSpec.swift
//  notes
//
//  Created by Thiago Lioy on 2/12/16.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import Quick
import Nimble
import notes

extension ScaleSpec{
    func compareScaleNotes(expected:[Note],actual:[Note]){
        for (i,n) in actual.enumerate(){
            let other = expected[i]
            let areTheSame = n == other || n == other.eharmonicEquivalent()
            if(!areTheSame){
                print("Scale Note: \(n.fullname()) is not equal to : \(other.fullname())")
            }
            expect(areTheSame).to(beTruthy())
        }
    }
    
    func compareChordTones(expected:[Note],actual:[Note]){
        for (i,n) in actual.enumerate(){
            let other = expected[i]
            let areTheSame = n == other || n == other.eharmonicEquivalent()
            if(!areTheSame){
                print("Chord Tone Note: \(n.fullname()) is not equal to : \(other.fullname())")
            }
            expect(areTheSame).to(beTruthy())
        }
    }
}

class ScaleSpec: QuickSpec {
    override func spec() {
        
        describe("Ionian Mode") {
            let expectedNotes = [
                Note(name: .C, intonation: .Natural),
                Note(name: .D, intonation: .Natural),
                Note(name: .E, intonation: .Natural),
                Note(name: .F, intonation: .Natural),
                Note(name: .G, intonation: .Natural),
                Note(name: .A, intonation: .Natural),
                Note(name: .B, intonation: .Natural),
                Note(name: .C, intonation: .Natural)
            ]
            let ionianScale = Scale(kind: .Ionian, key: expectedNotes.first!)
            
            it("should have access to scale key ") {
                expect(ionianScale.key) == Note(name: .C, intonation: .Natural)
            }
            it("should have access to scale kind ") {
                expect(ionianScale.kind) == ScaleKind.Ionian
            }
            
            it("should have expected notes") {
                self.compareScaleNotes(expectedNotes, actual: ionianScale.notes())
            }
            
            describe("chordTones") {
                it("should be of kind") {
                    expect(ionianScale.chordKind()) == ChordKind.Major7
                }
                it("should have expected chordTones") {
                    expect(ionianScale.chordTones()) == [
                        Note(name: .C, intonation: .Natural),
                        Note(name: .E, intonation: .Natural),
                        Note(name: .G, intonation: .Natural),
                        Note(name: .B, intonation: .Natural)
                    ]
                }
            }
        }
        
        describe("Dorian Mode") {
            let expectedNotes = [
                Note(name: .C, intonation: .Natural),
                Note(name: .D, intonation: .Natural),
                Note(name: .E, intonation: .Flat),
                Note(name: .F, intonation: .Natural),
                Note(name: .G, intonation: .Natural),
                Note(name: .A, intonation: .Natural),
                Note(name: .B, intonation: .Flat),
                Note(name: .C, intonation: .Natural)
            ]
            
            let scale = Scale(kind: .Dorian, key: expectedNotes.first!)
            
            it("should have access to scale key ") {
                expect(scale.key) == Note(name: .C, intonation: .Natural)
            }
            it("should have access to scale kind ") {
                expect(scale.kind) == ScaleKind.Dorian
            }
            
            it("should have expected notes") {
                self.compareScaleNotes(expectedNotes, actual: scale.notes())
            }
            
            describe("chordTones") {
                let expectedChordTones = [
                    Note(name: .C, intonation: .Natural),
                    Note(name: .E, intonation: .Flat),
                    Note(name: .G, intonation: .Natural),
                    Note(name: .B, intonation: .Flat)
                ]
                
                it("should be of kind") {
                    expect(scale.chordKind()) == ChordKind.Minor7
                }
                it("should have expected chordTones") {
                    self.compareChordTones(expectedChordTones, actual: scale.chordTones())
                }
            }
        }
        
        
        describe("Phrygian Mode") {
            let expectedNotes = [
                Note(name: .C, intonation: .Natural),
                Note(name: .D, intonation: .Flat),
                Note(name: .E, intonation: .Flat),
                Note(name: .F, intonation: .Natural),
                Note(name: .G, intonation: .Natural),
                Note(name: .A, intonation: .Flat),
                Note(name: .B, intonation: .Flat),
                Note(name: .C, intonation: .Natural)
            ]

            let scale = Scale(kind: .Phrygian, key: expectedNotes.first!)
            
            it("should have access to scale key ") {
                expect(scale.key) == Note(name: .C, intonation: .Natural)
            }
            it("should have access to scale kind ") {
                expect(scale.kind) == ScaleKind.Phrygian
            }
            
            it("should have expected notes") {
                self.compareScaleNotes(expectedNotes, actual: scale.notes())
            }
            
            describe("chordTones") {
                let expectedChordTones = [
                    Note(name: .C, intonation: .Natural),
                    Note(name: .E, intonation: .Flat),
                    Note(name: .G, intonation: .Natural),
                    Note(name: .B, intonation: .Flat)
                ]
                
                it("should be of kind") {
                    expect(scale.chordKind()) == ChordKind.Minor7
                }
                it("should have expected chordTones") {
                    self.compareChordTones(expectedChordTones, actual: scale.chordTones())
                }
            }
        }
        
        describe("Lydian Mode") {
            let expectedNotes = [
                Note(name: .C, intonation: .Natural),
                Note(name: .D, intonation: .Natural),
                Note(name: .E, intonation: .Natural),
                Note(name: .F, intonation: .Sharp),
                Note(name: .G, intonation: .Natural),
                Note(name: .A, intonation: .Natural),
                Note(name: .B, intonation: .Natural),
                Note(name: .C, intonation: .Natural)
            ]
            
            let scale = Scale(kind: .Lydian, key: expectedNotes.first!)
            
            it("should have access to scale key ") {
                expect(scale.key) == Note(name: .C, intonation: .Natural)
            }
            it("should have access to scale kind ") {
                expect(scale.kind) == ScaleKind.Lydian
            }
            
            it("should have expected notes") {
                self.compareScaleNotes(expectedNotes, actual: scale.notes())
            }
            
            describe("chordTones") {
                let expectedChordTones = [
                    Note(name: .C, intonation: .Natural),
                    Note(name: .E, intonation: .Natural),
                    Note(name: .G, intonation: .Natural),
                    Note(name: .B, intonation: .Natural)
                ]
                
                it("should be of kind") {
                    expect(scale.chordKind()) == ChordKind.Major7
                }
                it("should have expected chordTones") {
                    self.compareChordTones(expectedChordTones, actual: scale.chordTones())
                }
            }
        }
        
        describe("Mixolydian Mode") {
            let expectedNotes = [
                Note(name: .C, intonation: .Natural),
                Note(name: .D, intonation: .Natural),
                Note(name: .E, intonation: .Natural),
                Note(name: .F, intonation: .Natural),
                Note(name: .G, intonation: .Natural),
                Note(name: .A, intonation: .Natural),
                Note(name: .B, intonation: .Flat),
                Note(name: .C, intonation: .Natural)
            ]
            
            let scale = Scale(kind: .Mixolydian, key: expectedNotes.first!)
            
            it("should have access to scale key ") {
                expect(scale.key) == Note(name: .C, intonation: .Natural)
            }
            it("should have access to scale kind ") {
                expect(scale.kind) == ScaleKind.Mixolydian
            }
            
            it("should have expected notes") {
                self.compareScaleNotes(expectedNotes, actual: scale.notes())
            }
            
            describe("chordTones") {
                let expectedChordTones = [
                    Note(name: .C, intonation: .Natural),
                    Note(name: .E, intonation: .Natural),
                    Note(name: .G, intonation: .Natural),
                    Note(name: .B, intonation: .Flat)
                ]
                
                it("should be of kind") {
                    expect(scale.chordKind()) == ChordKind.dom7
                }
                it("should have expected chordTones") {
                    self.compareChordTones(expectedChordTones, actual: scale.chordTones())
                }
            }
        }
        
        describe("Aeolian Mode") {
            let expectedNotes = [
                Note(name: .C, intonation: .Natural),
                Note(name: .D, intonation: .Natural),
                Note(name: .E, intonation: .Flat),
                Note(name: .F, intonation: .Natural),
                Note(name: .G, intonation: .Natural),
                Note(name: .A, intonation: .Flat),
                Note(name: .B, intonation: .Flat),
                Note(name: .C, intonation: .Natural)
            ]
            
            let scale = Scale(kind: .Aeolian, key: expectedNotes.first!)
            
            it("should have access to scale key ") {
                expect(scale.key) == Note(name: .C, intonation: .Natural)
            }
            it("should have access to scale kind ") {
                expect(scale.kind) == ScaleKind.Aeolian
            }
            
            it("should have expected notes") {
                self.compareScaleNotes(expectedNotes, actual: scale.notes())
            }
            
            describe("chordTones") {
                let expectedChordTones = [
                    Note(name: .C, intonation: .Natural),
                    Note(name: .E, intonation: .Flat),
                    Note(name: .G, intonation: .Natural),
                    Note(name: .B, intonation: .Flat)
                ]
                
                it("should be of kind") {
                    expect(scale.chordKind()) == ChordKind.Minor7
                }
                it("should have expected chordTones") {
                    self.compareChordTones(expectedChordTones, actual: scale.chordTones())
                }
            }
        }
        
        describe("Locrian Mode") {
            let expectedNotes = [
                Note(name: .C, intonation: .Natural),
                Note(name: .D, intonation: .Flat),
                Note(name: .E, intonation: .Flat),
                Note(name: .F, intonation: .Natural),
                Note(name: .G, intonation: .Flat),
                Note(name: .A, intonation: .Flat),
                Note(name: .B, intonation: .Flat),
                Note(name: .C, intonation: .Natural)
            ]
            
            let scale = Scale(kind: .Locrian, key: expectedNotes.first!)
            
            it("should have access to scale key ") {
                expect(scale.key) == Note(name: .C, intonation: .Natural)
            }
            it("should have access to scale kind ") {
                expect(scale.kind) == ScaleKind.Locrian
            }
            
            it("should have expected notes") {
                self.compareScaleNotes(expectedNotes, actual: scale.notes())
            }
            
            describe("chordTones") {
                let expectedChordTones = [
                    Note(name: .C, intonation: .Natural),
                    Note(name: .E, intonation: .Flat),
                    Note(name: .G, intonation: .Flat),
                    Note(name: .B, intonation: .Flat)
                ]
                
                it("should be of kind") {
                    expect(scale.chordKind()) == ChordKind.Minor7b5
                }
                it("should have expected chordTones") {
                    self.compareChordTones(expectedChordTones, actual: scale.chordTones())
                }
            }
        }
    }
}
