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
            
            it("should have the expected full name") {
                expect(chord.fullName()).to(equal("Cm"))
            }
            
            it("should have the expected intervals") {
                
                expect(chord.chordIntervals).to(equal([
                    .root,
                    .minorThird,
                    .perfectFifth
                    ]))
            }
            
            it("should have the expected chord tones in key of C Natural") {
                let notes = chord.chordTones()
                expect(notes).to(equal([
                    Note(name: .C, intonation: .natural),
                    Note(name: .D, intonation: .sharp),
                    Note(name: .G, intonation: .natural),
                ]))
            }
        }
    }
    
}


