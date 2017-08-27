//
//  HalfDiminishedSeventhChordSpec.swift
//  Notes
//
//  Created by Thiago Lioy on 27/08/17.
//  Copyright © 2017 com.tplioy. All rights reserved.
//

import Foundation
import Quick
import Nimble
@testable import Notes

class HalfDiminishedSeventhChordSpec: QuickSpec {
    
    override func spec() {
        
        describe("Major Seventh Chord") {
            
            var chord: HalfDiminishedSeventhChord!
            beforeEach {
                let key = Note(name: .C, intonation: .natural)
                chord = HalfDiminishedSeventhChord(key: key)
            }
            
            it("should have the expected symbol") {
                expect(chord.symbol).to(equal("m7b5"))
            }
            
            it("should have the expected full name") {
                expect(chord.fullName()).to(equal("Cm7b5"))
            }
            
            it("should have the expected intervals") {
                
                expect(chord.chordIntervals).to(equal([
                    .root,
                    .minorThird,
                    .diminishedFifth,
                    .minorSeventh
                ]))
            }
            
            it("should have the expected chord tones in key of C Natural") {
                let notes = chord.chordTones()
                expect(notes).to(equal([
                    Note(name: .C, intonation: .natural),
                    Note(name: .E, intonation: .flat),
                    Note(name: .G, intonation: .flat),
                    Note(name: .B, intonation: .flat),
                ]))
            }
        }
    }
    
}

