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
            
            it("should have the expected full name") {
                expect(chord.fullName()).to(equal("C7+"))
            }
            
            it("should have the expected intervals") {
                
                expect(chord.chordIntervals).to(equal([
                    .root,
                    .majorThird,
                    .perfectFifth,
                    .majorSeventh
                    ]))
            }
            
            it("should have the expected chord tones in key of C Natural") {
                let notes = chord.chordTones()
                expect(notes).to(equal([
                    Note(name: .C, intonation: .natural),
                    Note(name: .E, intonation: .natural),
                    Note(name: .G, intonation: .natural),
                    Note(name: .B, intonation: .natural),
                ]))
            }
        }
    }
    
}

