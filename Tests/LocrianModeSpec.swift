//
//  LocrianModeSpec.swift
//  Notes
//
//  Created by Thiago Lioy on 03/09/17.
//  Copyright © 2017 com.tplioy. All rights reserved.
//

import Foundation

import Quick
import Nimble
@testable import Notes

class LocrianModeSpec: QuickSpec {
    
    override func spec() {
        
        describe("Locrian Mode") {
            
            var mode: LocrianMode!
            beforeEach {
                mode = LocrianMode(key: Note(name: .C, intonation: .natural))
            }
            
            it("should have the expected names") {
                expect(mode.names.first!).to(equal("Locrian Mode"))
            }
            
            it("should have the expected intervals") {
                
                expect(mode.intervals).to(equal([
                    .halfstep,.wholestep,.wholestep,
                    .halfstep,.wholestep,.wholestep,
                    .wholestep
                    ]))
            }
            
            context("C natural") {
                it("should have the expected notes in key of C Natural") {
                    let key = Note(name: .C, intonation: .natural)
                    let notes = LocrianMode(key: key).scaleNotes()
                    expect(notes).to(equal([
                        Note(name: .C, intonation: .natural),
                        Note(name: .D, intonation: .flat),
                        Note(name: .E, intonation: .flat),
                        Note(name: .F, intonation: .natural),
                        Note(name: .G, intonation: .flat),
                        Note(name: .A, intonation: .flat),
                        Note(name: .B, intonation: .flat),
                        Note(name: .C, intonation: .natural)
                        ]))
                }
            }
            
            context("G natural") {
                it("should have the expected notes in key of G Natural") {
                    let key = Note(name: .G, intonation: .natural)
                    let notes = LocrianMode(key: key).scaleNotes()
                    expect(notes).to(equal([
                        Note(name: .G, intonation: .natural),
                        Note(name: .A, intonation: .flat),
                        Note(name: .B, intonation: .flat),
                        Note(name: .C, intonation: .natural),
                        Note(name: .D, intonation: .flat),
                        Note(name: .E, intonation: .flat),
                        Note(name: .F, intonation: .natural),
                        Note(name: .G, intonation: .natural)
                        ]))
                }
            }
            
            context("D natural") {
                it("should have the expected notes in key of D Natural") {
                    let key = Note(name: .D, intonation: .natural)
                    let notes = LocrianMode(key: key).scaleNotes()
                    expect(notes).to(equal([
                        Note(name: .D, intonation: .natural),
                        Note(name: .E, intonation: .flat),
                        Note(name: .F, intonation: .natural),
                        Note(name: .G, intonation: .natural),
                        Note(name: .A, intonation: .flat),
                        Note(name: .B, intonation: .flat),
                        Note(name: .C, intonation: .natural),
                        Note(name: .D, intonation: .natural)
                        ]))
                }
            }
            
            context("A natural") {
                it("should have the expected notes in key of A Natural") {
                    let key = Note(name: .A, intonation: .natural)
                    let notes = LocrianMode(key: key).scaleNotes()
                    expect(notes).to(equal([
                        Note(name: .A, intonation: .natural),
                        Note(name: .B, intonation: .flat),
                        Note(name: .C, intonation: .natural),
                        Note(name: .D, intonation: .natural),
                        Note(name: .E, intonation: .flat),
                        Note(name: .F, intonation: .natural),
                        Note(name: .G, intonation: .natural),
                        Note(name: .A, intonation: .natural)
                        ]))
                }
            }
            
            context("E natural") {
                it("should have the expected notes in key of E Natural") {
                    let key = Note(name: .E, intonation: .natural)
                    let notes = LocrianMode(key: key).scaleNotes()
                    expect(notes).to(equal([
                        Note(name: .E, intonation: .natural),
                        Note(name: .F, intonation: .natural),
                        Note(name: .G, intonation: .natural),
                        Note(name: .A, intonation: .natural),
                        Note(name: .B, intonation: .flat),
                        Note(name: .C, intonation: .natural),
                        Note(name: .D, intonation: .natural),
                        Note(name: .E, intonation: .natural)
                        ]))
                }
            }
            
            context("B natural") {
                it("should have the expected notes in key of B Natural") {
                    let key = Note(name: .B, intonation: .natural)
                    let notes = LocrianMode(key: key).scaleNotes()
                    expect(notes).to(equal([
                        Note(name: .B, intonation: .natural),
                        Note(name: .C, intonation: .natural),
                        Note(name: .D, intonation: .natural),
                        Note(name: .E, intonation: .natural),
                        Note(name: .F, intonation: .natural),
                        Note(name: .G, intonation: .natural),
                        Note(name: .A, intonation: .natural),
                        Note(name: .B, intonation: .natural)
                        ]))
                }
            }
            
            context("F sharp") {
                it("should have the expected notes") {
                    let key = Note(name: .F, intonation: .sharp)
                    let notes = LocrianMode(key: key).scaleNotes()
                    expect(notes).to(equal([
                        Note(name: .F, intonation: .sharp),
                        Note(name: .G, intonation: .natural),
                        Note(name: .A, intonation: .natural),
                        Note(name: .B, intonation: .natural),
                        Note(name: .C, intonation: .natural),
                        Note(name: .D, intonation: .natural),
                        Note(name: .E, intonation: .natural),
                        Note(name: .F, intonation: .sharp)
                        ]))
                }
            }
            
            context("G flat") {
                it("should have the expected notes") {
                    let key = Note(name: .G, intonation: .flat)
                    let notes = LocrianMode(key: key).scaleNotes()
                    expect(notes).to(equal([
                        Note(name: .G, intonation: .flat),
                        Note(name: .A, intonation: .doubleFlat),
                        Note(name: .B, intonation: .doubleFlat),
                        Note(name: .C, intonation: .flat),
                        Note(name: .D, intonation: .doubleFlat),
                        Note(name: .E, intonation: .doubleFlat),
                        Note(name: .F, intonation: .flat),
                        Note(name: .G, intonation: .flat)
                        ]))
                }
            }
            
            context("D flat") {
                it("should have the expected notes") {
                    let key = Note(name: .D, intonation: .flat)
                    let notes = LocrianMode(key: key).scaleNotes()
                    expect(notes).to(equal([
                        Note(name: .D, intonation: .flat),
                        Note(name: .E, intonation: .doubleFlat),
                        Note(name: .F, intonation: .flat),
                        Note(name: .G, intonation: .flat),
                        Note(name: .A, intonation: .doubleFlat),
                        Note(name: .B, intonation: .doubleFlat),
                        Note(name: .C, intonation: .flat),
                        Note(name: .D, intonation: .flat)
                        ]))
                }
            }
            
            
            
            context("A flat") {
                it("should have the expected notes") {
                    let key = Note(name: .A, intonation: .flat)
                    let notes = LocrianMode(key: key).scaleNotes()
                    expect(notes).to(equal([
                        Note(name: .A, intonation: .flat),
                        Note(name: .B, intonation: .doubleFlat),
                        Note(name: .C, intonation: .flat),
                        Note(name: .D, intonation: .flat),
                        Note(name: .E, intonation: .doubleFlat),
                        Note(name: .F, intonation: .flat),
                        Note(name: .G, intonation: .flat),
                        Note(name: .A, intonation: .flat)
                        ]))
                }
            }
            
            context("E flat") {
                it("should have the expected notes") {
                    let key = Note(name: .E, intonation: .flat)
                    let notes = LocrianMode(key: key).scaleNotes()
                    expect(notes).to(equal([
                        Note(name: .E, intonation: .flat),
                        Note(name: .F, intonation: .flat),
                        Note(name: .G, intonation: .flat),
                        Note(name: .A, intonation: .flat),
                        Note(name: .B, intonation: .doubleFlat),
                        Note(name: .C, intonation: .flat),
                        Note(name: .D, intonation: .flat),
                        Note(name: .E, intonation: .flat)
                        ]))
                }
            }
            
            
            
            context("B flat") {
                it("should have the expected notes") {
                    let key = Note(name: .B, intonation: .flat)
                    let notes = LocrianMode(key: key).scaleNotes()
                    expect(notes).to(equal([
                        Note(name: .B, intonation: .flat),
                        Note(name: .C, intonation: .flat),
                        Note(name: .D, intonation: .flat),
                        Note(name: .E, intonation: .flat),
                        Note(name: .F, intonation: .flat),
                        Note(name: .G, intonation: .flat),
                        Note(name: .A, intonation: .flat),
                        Note(name: .B, intonation: .flat)
                        ]))
                }
            }
            
            
            
            context("F natural") {
                it("should have the expected notes") {
                    let key = Note(name: .F, intonation: .natural)
                    let notes = LocrianMode(key: key).scaleNotes()
                    expect(notes).to(equal([
                        Note(name: .F, intonation: .natural),
                        Note(name: .G, intonation: .flat),
                        Note(name: .A, intonation: .flat),
                        Note(name: .B, intonation: .flat),
                        Note(name: .C, intonation: .flat),
                        Note(name: .D, intonation: .flat),
                        Note(name: .E, intonation: .flat),
                        Note(name: .F, intonation: .natural)
                        ]))
                }
            }
            
        }
    }
    
}


