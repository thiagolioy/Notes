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
            it("next of C# should be D") {
                let note:Note = Note(name:.C,intonation: .Sharp)
                let nextNote = note.next()
                expect(nextNote.name) == NoteName.D
                expect(nextNote.intonation) == NoteIntonation.Natural
            }
            it("next of D should be D#") {
                let note:Note = Note(name:.D,intonation: .Natural)
                let nextNote = note.next()
                expect(nextNote.name) == NoteName.D
                expect(nextNote.intonation) == NoteIntonation.Sharp
            }
            it("next of D# should be E") {
                let note:Note = Note(name:.D,intonation: .Sharp)
                let nextNote = note.next()
                expect(nextNote.name) == NoteName.E
                expect(nextNote.intonation) == NoteIntonation.Natural
            }
            it("next of E should be F") {
                let note:Note = Note(name:.E,intonation: .Natural)
                let nextNote = note.next()
                expect(nextNote.name) == NoteName.F
                expect(nextNote.intonation) == NoteIntonation.Natural
            }
            it("next of F should be F#") {
                let note:Note = Note(name:.F,intonation: .Natural)
                let nextNote = note.next()
                expect(nextNote.name) == NoteName.F
                expect(nextNote.intonation) == NoteIntonation.Sharp
            }
            it("next of F# should be G") {
                let note:Note = Note(name:.F,intonation: .Sharp)
                let nextNote = note.next()
                expect(nextNote.name) == NoteName.G
                expect(nextNote.intonation) == NoteIntonation.Natural
            }
            it("next of G should be G#") {
                let note:Note = Note(name:.G,intonation: .Natural)
                let nextNote = note.next()
                expect(nextNote.name) == NoteName.G
                expect(nextNote.intonation) == NoteIntonation.Sharp
            }
            it("next of G# should be A") {
                let note:Note = Note(name:.G,intonation: .Sharp)
                let nextNote = note.next()
                expect(nextNote.name) == NoteName.A
                expect(nextNote.intonation) == NoteIntonation.Natural
            }
            it("next of A should be A#") {
                let note:Note = Note(name:.A,intonation: .Natural)
                let nextNote = note.next()
                expect(nextNote.name) == NoteName.A
                expect(nextNote.intonation) == NoteIntonation.Sharp
            }
            it("next of A# should be B") {
                let note:Note = Note(name:.A,intonation: .Sharp)
                let nextNote = note.next()
                expect(nextNote.name) == NoteName.B
                expect(nextNote.intonation) == NoteIntonation.Natural
            }
            it("next of B should be C") {
                let note:Note = Note(name:.B,intonation: .Natural)
                let nextNote = note.next()
                expect(nextNote.name) == NoteName.C
                expect(nextNote.intonation) == NoteIntonation.Natural
            }
            
            describe("should be able to return the previous note of current instance") {
                it("previous of C should be B") {
                    let note:Note = Note(name:.C,intonation: .Natural)
                    let nextNote = note.previous()
                    expect(nextNote.name) == NoteName.B
                    expect(nextNote.intonation) == NoteIntonation.Natural
                }
                it("previous of B should be A#") {
                    let note:Note = Note(name:.B,intonation: .Natural)
                    let nextNote = note.previous()
                    expect(nextNote.name) == NoteName.A
                    expect(nextNote.intonation) == NoteIntonation.Sharp
                }
                it("previous of A# should be A") {
                    let note:Note = Note(name:.A,intonation: .Sharp)
                    let nextNote = note.previous()
                    expect(nextNote.name) == NoteName.A
                    expect(nextNote.intonation) == NoteIntonation.Natural
                }
                it("previous of A should be G#") {
                    let note:Note = Note(name:.A,intonation: .Natural)
                    let nextNote = note.previous()
                    expect(nextNote.name) == NoteName.G
                    expect(nextNote.intonation) == NoteIntonation.Sharp
                }
                it("previous of G# should be G") {
                    let note:Note = Note(name:.G,intonation: .Sharp)
                    let nextNote = note.previous()
                    expect(nextNote.name) == NoteName.G
                    expect(nextNote.intonation) == NoteIntonation.Natural
                }
                it("previous of G should be F#") {
                    let note:Note = Note(name:.G,intonation: .Natural)
                    let nextNote = note.previous()
                    expect(nextNote.name) == NoteName.F
                    expect(nextNote.intonation) == NoteIntonation.Sharp
                }
                it("previous of F# should be F") {
                    let note:Note = Note(name:.F,intonation: .Sharp)
                    let nextNote = note.previous()
                    expect(nextNote.name) == NoteName.F
                    expect(nextNote.intonation) == NoteIntonation.Natural
                }
                it("previous of F should be E") {
                    let note:Note = Note(name:.F,intonation: .Natural)
                    let nextNote = note.previous()
                    expect(nextNote.name) == NoteName.E
                    expect(nextNote.intonation) == NoteIntonation.Natural
                }
                it("previous of E should be D#") {
                    let note:Note = Note(name:.E,intonation: .Natural)
                    let nextNote = note.previous()
                    expect(nextNote.name) == NoteName.D
                    expect(nextNote.intonation) == NoteIntonation.Sharp
                }
                it("previous of D# should be D") {
                    let note:Note = Note(name:.D,intonation: .Sharp)
                    let nextNote = note.previous()
                    expect(nextNote.name) == NoteName.D
                    expect(nextNote.intonation) == NoteIntonation.Natural
                }
                it("previous of D should be C#") {
                    let note:Note = Note(name:.D,intonation: .Natural)
                    let nextNote = note.previous()
                    expect(nextNote.name) == NoteName.C
                    expect(nextNote.intonation) == NoteIntonation.Sharp
                }
                it("previous of C# should be C") {
                    let note:Note = Note(name:.C,intonation: .Sharp)
                    let nextNote = note.previous()
                    expect(nextNote.name) == NoteName.C
                    expect(nextNote.intonation) == NoteIntonation.Natural
                }
            }
                
            
        }
    }
}
