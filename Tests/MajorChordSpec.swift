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
    }
    
}

