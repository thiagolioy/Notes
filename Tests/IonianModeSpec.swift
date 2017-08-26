//
//  IonianModeSpec.swift
//  Notes
//
//  Created by Thiago Lioy on 26/08/17.
//  Copyright © 2017 com.tplioy. All rights reserved.
//

import Quick
import Nimble
@testable import Notes

class IonianModeSpec: QuickSpec {
    
    override func spec() {
        
        describe("Ionian Mode") {
            
            var mode: IonianMode!
            beforeEach {
                mode = IonianMode()
            }
            
            it("should have the expected names") {
                expect(mode.names.first!).to(equal("Ionian Mode"))
                expect(mode.names.last!).to(equal("Major Scale"))
            }
            
            it("should have the expected intervals") {
                expect(mode.intervals).to(equal([
                    .wholestep,.wholestep,.halfstep,
                    .wholestep,.wholestep,.wholestep,
                    .halfstep
                ]))
            }
            
            it("should have the expected notes in key of C Natural") {
                let key = Note(name: .C, intonation: .natural)
                let notes = mode.scaleNotes(inKey: key)
                expect(notes).to(equal([
                    Note(name: .C, intonation: .natural),
                    Note(name: .D, intonation: .natural),
                    Note(name: .E, intonation: .natural),
                    Note(name: .F, intonation: .natural),
                    Note(name: .G, intonation: .natural),
                    Note(name: .A, intonation: .natural),
                    Note(name: .B, intonation: .natural),
                    Note(name: .C, intonation: .natural)
                ]))
            }
        }
    }
    
}

