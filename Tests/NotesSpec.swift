//
//  NotesSpec.swift
//  Notes
//
//  Created by Thiago Lioy on 04/10/16.
//  Copyright © 2017 com.tplioy. All rights reserved.
//

import Quick
import Nimble
@testable import Notes

class NotesSpec: QuickSpec {

    override func spec() {

        describe("a Note") {
           
        
            describe("should be able to return the next note of current instance") {
                it("next of C should be C#") {
                    let note:Note = Note(name:.C,intonation: .natural)
                    let nextNote = note.next()
                    expect(nextNote.name) == Note.Name.C
                    expect(nextNote.intonation) == Note.Intonation.sharp
                }
                it("next of C# should be D") {
                    let note:Note = Note(name:.C,intonation: .sharp)
                    let nextNote = note.next()
                    expect(nextNote.name) == Note.Name.D
                    expect(nextNote.intonation) == Note.Intonation.natural
                }
                it("next of D should be D#") {
                    let note:Note = Note(name:.D,intonation: .natural)
                    let nextNote = note.next()
                    expect(nextNote.name) == Note.Name.D
                    expect(nextNote.intonation) == Note.Intonation.sharp
                }
                it("next of D# should be E") {
                    let note:Note = Note(name:.D,intonation: .sharp)
                    let nextNote = note.next()
                    expect(nextNote.name) == Note.Name.E
                    expect(nextNote.intonation) == Note.Intonation.natural
                }
                it("next of E should be F") {
                    let note:Note = Note(name:.E,intonation: .natural)
                    let nextNote = note.next()
                    expect(nextNote.name) == Note.Name.F
                    expect(nextNote.intonation) == Note.Intonation.natural
                }
                it("next of F should be F#") {
                    let note:Note = Note(name:.F,intonation: .natural)
                    let nextNote = note.next()
                    expect(nextNote.name) == Note.Name.F
                    expect(nextNote.intonation) == Note.Intonation.sharp
                }
                it("next of F# should be G") {
                    let note:Note = Note(name:.F,intonation: .sharp)
                    let nextNote = note.next()
                    expect(nextNote.name) == Note.Name.G
                    expect(nextNote.intonation) == Note.Intonation.natural
                }
                it("next of G should be G#") {
                    let note:Note = Note(name:.G,intonation: .natural)
                    let nextNote = note.next()
                    expect(nextNote.name) == Note.Name.G
                    expect(nextNote.intonation) == Note.Intonation.sharp
                }
                it("next of G# should be A") {
                    let note:Note = Note(name:.G,intonation: .sharp)
                    let nextNote = note.next()
                    expect(nextNote.name) == Note.Name.A
                    expect(nextNote.intonation) == Note.Intonation.natural
                }
                it("next of A should be A#") {
                    let note:Note = Note(name:.A,intonation: .natural)
                    let nextNote = note.next()
                    expect(nextNote.name) == Note.Name.A
                    expect(nextNote.intonation) == Note.Intonation.sharp
                }
                it("next of A# should be B") {
                    let note:Note = Note(name:.A,intonation: .sharp)
                    let nextNote = note.next()
                    expect(nextNote.name) == Note.Name.B
                    expect(nextNote.intonation) == Note.Intonation.natural
                }
                it("next of B should be C") {
                    let note:Note = Note(name:.B,intonation: .natural)
                    let nextNote = note.next()
                    expect(nextNote.name) == Note.Name.C
                    expect(nextNote.intonation) == Note.Intonation.natural
                }
                
                describe("should be able to return the previous note of current instance") {
                    it("previous of C should be B") {
                        let note:Note = Note(name:.C,intonation: .natural)
                        let nextNote = note.previous()
                        expect(nextNote.name) == Note.Name.B
                        expect(nextNote.intonation) == Note.Intonation.natural
                    }
                    it("previous of B should be A#") {
                        let note:Note = Note(name:.B,intonation: .natural)
                        let nextNote = note.previous()
                        expect(nextNote.name) == Note.Name.A
                        expect(nextNote.intonation) == Note.Intonation.sharp
                    }
                    it("previous of A# should be A") {
                        let note:Note = Note(name:.A,intonation: .sharp)
                        let nextNote = note.previous()
                        expect(nextNote.name) == Note.Name.A
                        expect(nextNote.intonation) == Note.Intonation.natural
                    }
                    it("previous of A should be G#") {
                        let note:Note = Note(name:.A,intonation: .natural)
                        let nextNote = note.previous()
                        expect(nextNote.name) == Note.Name.G
                        expect(nextNote.intonation) == Note.Intonation.sharp
                    }
                    it("previous of G# should be G") {
                        let note:Note = Note(name:.G,intonation: .sharp)
                        let nextNote = note.previous()
                        expect(nextNote.name) == Note.Name.G
                        expect(nextNote.intonation) == Note.Intonation.natural
                    }
                    it("previous of G should be F#") {
                        let note:Note = Note(name:.G,intonation: .natural)
                        let nextNote = note.previous()
                        expect(nextNote.name) == Note.Name.F
                        expect(nextNote.intonation) == Note.Intonation.sharp
                    }
                    it("previous of F# should be F") {
                        let note:Note = Note(name:.F,intonation: .sharp)
                        let nextNote = note.previous()
                        expect(nextNote.name) == Note.Name.F
                        expect(nextNote.intonation) == Note.Intonation.natural
                    }
                    it("previous of F should be E") {
                        let note:Note = Note(name:.F,intonation: .natural)
                        let nextNote = note.previous()
                        expect(nextNote.name) == Note.Name.E
                        expect(nextNote.intonation) == Note.Intonation.natural
                    }
                    it("previous of E should be D#") {
                        let note:Note = Note(name:.E,intonation: .natural)
                        let nextNote = note.previous()
                        expect(nextNote.name) == Note.Name.D
                        expect(nextNote.intonation) == Note.Intonation.sharp
                    }
                    it("previous of D# should be D") {
                        let note:Note = Note(name:.D,intonation: .sharp)
                        let nextNote = note.previous()
                        expect(nextNote.name) == Note.Name.D
                        expect(nextNote.intonation) == Note.Intonation.natural
                    }
                    it("previous of D should be C#") {
                        let note:Note = Note(name:.D,intonation: .natural)
                        let nextNote = note.previous()
                        expect(nextNote.name) == Note.Name.C
                        expect(nextNote.intonation) == Note.Intonation.sharp
                    }
                    it("previous of C# should be C") {
                        let note:Note = Note(name:.C,intonation: .sharp)
                        let nextNote = note.previous()
                        expect(nextNote.name) == Note.Name.C
                        expect(nextNote.intonation) == Note.Intonation.natural
                    }
                }
                
                describe("should be able to decrease intervals from note") {
                    describe("Halfstep") {
                        
                        it("C minus halfstep should be B") {
                            var note:Note = Note(name:.C,intonation: .natural)
                            note = note.minus(interval: .halfstep)
                            expect(note.name) == Note.Name.B
                            expect(note.intonation) == Note.Intonation.natural
                        }
                    }
                    
                    describe("Wholestep") {
                        
                        it("C minus wholestep should be A#") {
                            var note:Note = Note(name:.C,intonation: .natural)
                            note = note.minus(interval: .wholestep)
                            expect(note.name) == Note.Name.A
                            expect(note.intonation) == Note.Intonation.sharp
                        }
                    }
                }
                
                describe("should be able to add intervals to note") {
                    describe("Halfstep") {
                        
                        it("C more halfstep should be C#") {
                            var note:Note = Note(name:.C,intonation: .natural)
                            note = note.add(interval: .halfstep)
                            expect(note.name) == Note.Name.C
                            expect(note.intonation) == Note.Intonation.sharp
                        }
                        
                        it("C# more halfstep should be D") {
                            var note:Note = Note(name:.C,intonation: .sharp)
                            note = note.add(interval: .halfstep)
                            expect(note.name) == Note.Name.D
                            expect(note.intonation) == Note.Intonation.natural
                        }
                        
                        it("D more halfstep should be D#") {
                            var note:Note = Note(name:.D,intonation: .natural)
                            note = note.add(interval: .halfstep)
                            expect(note.name) == Note.Name.D
                            expect(note.intonation) == Note.Intonation.sharp
                        }
                        
                        it("D# more halfstep should be E") {
                            var note:Note = Note(name:.D,intonation: .sharp)
                            note = note.add(interval: .halfstep)
                            expect(note.name) == Note.Name.E
                            expect(note.intonation) == Note.Intonation.natural
                        }
                        
                        it("E more halfstep should be F") {
                            var note:Note = Note(name:.E,intonation: .natural)
                            note = note.add(interval: .halfstep)
                            expect(note.name) == Note.Name.F
                            expect(note.intonation) == Note.Intonation.natural
                        }
                        
                        it("F more halfstep should be F#") {
                            var note:Note = Note(name:.F,intonation: .natural)
                            note = note.add(interval: .halfstep)
                            expect(note.name) == Note.Name.F
                            expect(note.intonation) == Note.Intonation.sharp
                        }
                        
                        it("F# more halfstep should be G") {
                            var note:Note = Note(name:.F,intonation: .sharp)
                            note = note.add(interval: .halfstep)
                            expect(note.name) == Note.Name.G
                            expect(note.intonation) == Note.Intonation.natural
                        }
                        
                        it("G more halfstep should be G#") {
                            var note:Note = Note(name:.G,intonation: .natural)
                            note = note.add(interval: .halfstep)
                            expect(note.name) == Note.Name.G
                            expect(note.intonation) == Note.Intonation.sharp
                        }
                        
                        it("G# more halfstep should be A") {
                            var note:Note = Note(name:.G,intonation: .sharp)
                            note = note.add(interval: .halfstep)
                            expect(note.name) == Note.Name.A
                            expect(note.intonation) == Note.Intonation.natural
                        }
                        
                        it("A more halfstep should be A#") {
                            var note:Note = Note(name:.A,intonation: .natural)
                            note = note.add(interval: .halfstep)
                            expect(note.name) == Note.Name.A
                            expect(note.intonation) == Note.Intonation.sharp
                        }
                        
                        it("A# more halfstep should be B") {
                            var note:Note = Note(name:.A,intonation: .sharp)
                            note = note.add(interval: .halfstep)
                            expect(note.name) == Note.Name.B
                            expect(note.intonation) == Note.Intonation.natural
                        }
                        
                        it("B more halfstep should be C") {
                            var note:Note = Note(name:.B,intonation: .natural)
                            note =  note.add(interval: .halfstep)
                            expect(note.name) == Note.Name.C
                            expect(note.intonation) == Note.Intonation.natural
                        }
                        
                    }
                    
                    describe("wholestep") {
                        
                        it("C more wholestep should be D") {
                            var note:Note = Note(name:.C,intonation: .natural)
                            note = note.add(interval: .wholestep)
                            expect(note.name) == Note.Name.D
                            expect(note.intonation) == Note.Intonation.natural
                        }
                    }
                    
                    
                }
                
                
                describe("fullname") {
                    it("Sharp note should have a fullname") {
                        let note:Note = Note(name:.C,intonation: .sharp)
                        expect(note.fullname()) == "C♯"
                    }
                    
                    it("Flat note should have a fullname") {
                        let note:Note = Note(name:.D,intonation: .flat)
                        expect(note.fullname()) == "D♭"
                    }
                    
                    it("Natural note should have a fullname") {
                        let note:Note = Note(name:.D,intonation: .natural)
                        expect(note.fullname()) == "D"
                    }
                }
            }
        
        }

    }

}
