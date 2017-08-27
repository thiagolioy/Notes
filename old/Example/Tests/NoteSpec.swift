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
        describe("DiatonicHarmony"){
            it("should be able to create an major diatonic harmony for key") {
                let note:Note = Note(name:.C,intonation: .Natural)
                let expected = [
                    "CMajor7",
                    "DMinor7",
                    "EMinor7",
                    "FMajor7",
                    "Gdom7",
                    "AMinor7",
                    "BMinor7♭5",
                ]
                let actual = note.harmonyNames(.Major)
                expect(actual) == expected
            }
            it("should be able to create an minor diatonic harmony for key") {
                let note:Note = Note(name:.C,intonation: .Natural)
                let expected = [
                    "CMinor7",
                    "DMinor7♭5",
                    "E♭Major7",
                    "FMinor7",
                    "GMinor7",
                    "A♭Major7",
                    "B♭Major7",
                ]
                let actual = note.harmonyNames(.Minor)
                expect(actual) == expected
            }
        }
        
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
            
            describe("should be able to decrease intervals from note") {
                describe("Halfstep") {
                    
                    it("C minus halfstep should be B") {
                        var note:Note = Note(name:.C,intonation: .Natural)
                        note = note.minus(.Halfstep)
                        expect(note.name) == NoteName.B
                        expect(note.intonation) == NoteIntonation.Natural
                    }
                }
                
                describe("Wholestep") {
                    
                    it("C minus wholestep should be A#") {
                        var note:Note = Note(name:.C,intonation: .Natural)
                        note = note.minus(.Wholestep)
                        expect(note.name) == NoteName.A
                        expect(note.intonation) == NoteIntonation.Sharp
                    }
                }
            }
            
            describe("should be able to add intervals to note") {
                describe("Halfstep") {
                
                    it("C more halfstep should be C#") {
                        var note:Note = Note(name:.C,intonation: .Natural)
                        note = note.add(.Halfstep)
                        expect(note.name) == NoteName.C
                        expect(note.intonation) == NoteIntonation.Sharp
                    }

                    it("C# more halfstep should be D") {
                        var note:Note = Note(name:.C,intonation: .Sharp)
                        note = note.add(.Halfstep)
                        expect(note.name) == NoteName.D
                        expect(note.intonation) == NoteIntonation.Natural
                    }

                    it("D more halfstep should be D#") {
                        var note:Note = Note(name:.D,intonation: .Natural)
                        note = note.add(.Halfstep)
                        expect(note.name) == NoteName.D
                        expect(note.intonation) == NoteIntonation.Sharp
                    }

                    it("D# more halfstep should be E") {
                        var note:Note = Note(name:.D,intonation: .Sharp)
                        note = note.add(.Halfstep)
                        expect(note.name) == NoteName.E
                        expect(note.intonation) == NoteIntonation.Natural
                    }
                    
                    it("E more halfstep should be F") {
                        var note:Note = Note(name:.E,intonation: .Natural)
                        note = note.add(.Halfstep)
                        expect(note.name) == NoteName.F
                        expect(note.intonation) == NoteIntonation.Natural
                    }
                    
                    it("F more halfstep should be F#") {
                        var note:Note = Note(name:.F,intonation: .Natural)
                        note = note.add(.Halfstep)
                        expect(note.name) == NoteName.F
                        expect(note.intonation) == NoteIntonation.Sharp
                    }
                    
                    it("F# more halfstep should be G") {
                        var note:Note = Note(name:.F,intonation: .Sharp)
                        note = note.add(.Halfstep)
                        expect(note.name) == NoteName.G
                        expect(note.intonation) == NoteIntonation.Natural
                    }
                    
                    it("G more halfstep should be G#") {
                        var note:Note = Note(name:.G,intonation: .Natural)
                        note = note.add(.Halfstep)
                        expect(note.name) == NoteName.G
                        expect(note.intonation) == NoteIntonation.Sharp
                    }
                    
                    it("G# more halfstep should be A") {
                        var note:Note = Note(name:.G,intonation: .Sharp)
                        note = note.add(.Halfstep)
                        expect(note.name) == NoteName.A
                        expect(note.intonation) == NoteIntonation.Natural
                    }
                    
                    it("A more halfstep should be A#") {
                        var note:Note = Note(name:.A,intonation: .Natural)
                        note = note.add(.Halfstep)
                        expect(note.name) == NoteName.A
                        expect(note.intonation) == NoteIntonation.Sharp
                    }
                    
                    it("A# more halfstep should be B") {
                        var note:Note = Note(name:.A,intonation: .Sharp)
                        note = note.add(.Halfstep)
                        expect(note.name) == NoteName.B
                        expect(note.intonation) == NoteIntonation.Natural
                    }
                    
                    it("B more halfstep should be C") {
                        var note:Note = Note(name:.B,intonation: .Natural)
                        note =  note.add(.Halfstep)
                        expect(note.name) == NoteName.C
                        expect(note.intonation) == NoteIntonation.Natural
                    }

                }
                
                describe("wholestep") {
                    
                    it("C more wholestep should be D") {
                        var note:Note = Note(name:.C,intonation: .Natural)
                        note = note.add(.Wholestep)
                        expect(note.name) == NoteName.D
                        expect(note.intonation) == NoteIntonation.Natural
                    }
                }
                

            }
            
            
            describe("fullname") {
                it("Sharp note should have a fullname") {
                    let note:Note = Note(name:.C,intonation: .Sharp)
                    expect(note.fullname()) == "C♯"
                }
                
                it("Flat note should have a fullname") {
                    let note:Note = Note(name:.D,intonation: .Flat)
                    expect(note.fullname()) == "D♭"
                }
                
                it("Natural note should have a fullname") {
                    let note:Note = Note(name:.D,intonation: .Natural)
                    expect(note.fullname()) == "D"
                }
            }
            
            describe("eharmonicEquivalent") {
                it("C# should be equivalent to Db") {
                    let note:Note = Note(name:.C,intonation: .Sharp)
                    let eqv = note.eharmonicEquivalent()
                    expect(eqv!.name) == NoteName.D
                    expect(eqv!.intonation) == NoteIntonation.Flat
                }
                it("Db should be equivalent to C#") {
                    let note:Note = Note(name:.D,intonation: .Flat)
                    let eqv = note.eharmonicEquivalent()
                    expect(eqv!.name) == NoteName.C
                    expect(eqv!.intonation) == NoteIntonation.Sharp
                }
                it("D# should be equivalent to Eb") {
                    let note:Note = Note(name:.D,intonation: .Sharp)
                    let eqv = note.eharmonicEquivalent()
                    expect(eqv!.name) == NoteName.E
                    expect(eqv!.intonation) == NoteIntonation.Flat
                }
                it("Eb should be equivalent to D#") {
                    let note:Note = Note(name:.E,intonation: .Flat)
                    let eqv = note.eharmonicEquivalent()
                    expect(eqv!.name) == NoteName.D
                    expect(eqv!.intonation) == NoteIntonation.Sharp
                }
                it("F# should be equivalent to Gb") {
                    let note:Note = Note(name:.F,intonation: .Sharp)
                    let eqv = note.eharmonicEquivalent()
                    expect(eqv!.name) == NoteName.G
                    expect(eqv!.intonation) == NoteIntonation.Flat
                }
                it("Gb should be equivalent to F#") {
                    let note:Note = Note(name:.G,intonation: .Flat)
                    let eqv = note.eharmonicEquivalent()
                    expect(eqv!.name) == NoteName.F
                    expect(eqv!.intonation) == NoteIntonation.Sharp
                }
                it("G# should be equivalent to Ab") {
                    let note:Note = Note(name:.G,intonation: .Sharp)
                    let eqv = note.eharmonicEquivalent()
                    expect(eqv!.name) == NoteName.A
                    expect(eqv!.intonation) == NoteIntonation.Flat
                }
                it("Ab should be equivalent to G#") {
                    let note:Note = Note(name:.A,intonation: .Flat)
                    let eqv = note.eharmonicEquivalent()
                    expect(eqv!.name) == NoteName.G
                    expect(eqv!.intonation) == NoteIntonation.Sharp
                }
                it("A# should be equivalent to Bb") {
                    let note:Note = Note(name:.A,intonation: .Sharp)
                    let eqv = note.eharmonicEquivalent()
                    expect(eqv!.name) == NoteName.B
                    expect(eqv!.intonation) == NoteIntonation.Flat
                }
                it("Bb should be equivalent to A#") {
                    let note:Note = Note(name:.B,intonation: .Flat)
                    let eqv = note.eharmonicEquivalent()
                    expect(eqv!.name) == NoteName.A
                    expect(eqv!.intonation) == NoteIntonation.Sharp
                }
            }
            
        }
    }
}
