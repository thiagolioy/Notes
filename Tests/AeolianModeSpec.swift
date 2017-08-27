//
//  AeolianModeSpec.swift
//  Notes
//
//  Created by Thiago Lioy on 27/08/17.
//  Copyright © 2017 com.tplioy. All rights reserved.
//

import Foundation

import Quick
import Nimble
@testable import Notes

class AeolianModeSpec: QuickSpec {
    
    override func spec() {
        
        describe("Aeolian Mode") {
            
            var mode: AeolianMode!
            beforeEach {
                mode = AeolianMode()
            }
            
            it("should have the expected names") {
                expect(mode.names.first!).to(equal("Aeolian Mode"))
                expect(mode.names.last!).to(equal("Minor Scale"))
            }
            
            it("should have the expected intervals") {
                expect(mode.intervals).to(equal([
                     .wholestep,.halfstep,.wholestep,
                     .wholestep,.halfstep,.wholestep,
                     .wholestep
                ]))
            }
            
            it("should have the expected notes in key of C Natural") {
                let key = Note(name: .C, intonation: .natural)
                let notes = mode.scaleNotes(inKey: key)
                expect(notes).to(equal([
                    Note(name: .C, intonation: .natural),
                    Note(name: .D, intonation: .natural),
                    Note(name: .E, intonation: .flat),
                    Note(name: .F, intonation: .natural),
                    Note(name: .G, intonation: .natural),
                    Note(name: .A, intonation: .flat),
                    Note(name: .B, intonation: .flat),
                    Note(name: .C, intonation: .natural)
                ]))
            }
        }
    }
    
}

