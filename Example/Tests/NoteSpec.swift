//
//  NoteSpec.swift
//  notes
//
//  Created by Thiago Lioy on 2/8/16.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import Quick
import Nimble
import notes

class NoteSpec: QuickSpec {
    override func spec() {
        describe("should be able to return the next note of current instance") {
            it("next of C should be C#") {
                let note:Note = Note(name:.C,intonation: .Natural)
                let nextNote = note.next()
                expect(nextNote.name) == NoteName.C
                expect(nextNote.intonation) == NoteIntonation.Sharp
            }
        }
    }
}
