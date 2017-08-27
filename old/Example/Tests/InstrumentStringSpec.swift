//
//  InstrumentStringSpec.swift
//  notes
//
//  Created by Thiago Lioy on 2/17/16.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import Quick
import Nimble
import notes

class InstrumentStringSpec: QuickSpec {
    override func spec() {
        describe("InstrumentString"){
            it("should be able to create an instrumentString for key") {
                let note:Note = Note(name:.C,intonation: .Natural)
                let instrString = InstrumentString(tunning:note,maxFretNumber:4)
                
                expect(instrString.notes) == [
                    Note(name:.C,intonation: .Natural),
                    Note(name:.C,intonation: .Sharp),
                    Note(name:.D,intonation: .Natural),
                    Note(name:.D,intonation: .Sharp)
                ]
            }
        }
       
    }
}