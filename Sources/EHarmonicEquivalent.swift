//
//  EHarmonicEquivalent.swift
//  Notes
//
//  Created by Thiago Lioy on 26/08/17.
//  Copyright © 2017 com.tplioy. All rights reserved.
//

import Foundation

public struct EHarmonicNote {
    let note: Note
    let sharpEquivalent: Note?
    let flatEquivalent: Note
    
    init(note: Note, sharpEquivalent: Note? = nil, flatEquivalent: Note) {
        self.note = note
        self.sharpEquivalent = sharpEquivalent
        self.flatEquivalent = flatEquivalent
    }
    
    func contains(note: Note) -> Bool {
        return self.note == note ||
               sharpEquivalent == note ||
               flatEquivalent == note
    }
    
    func eHarmonic(with noteName: Note.Name) -> Note? {
        if noteName == note.name {
            return note
        } else if noteName == flatEquivalent.name {
            return flatEquivalent
        }
        
        if let sharpEquivalent = sharpEquivalent {
            if sharpEquivalent.name == noteName {
                return sharpEquivalent
            }
        }
        
        return nil
    }
}

public struct EHarmonicEquivalent{
    private static let eharmonics: [EHarmonicNote] = [
        EHarmonicNote(note: Note(name: .C, intonation: .natural),
                      sharpEquivalent: Note(name: .B, intonation: .sharp),
                      flatEquivalent: Note(name: .D, intonation: .doubleFlat)),
        
        EHarmonicNote(note: Note(name: .C, intonation: .sharp),
                      sharpEquivalent: Note(name: .B, intonation: .doubleSharp),
                      flatEquivalent: Note(name: .D, intonation: .flat)),
        
        EHarmonicNote(note: Note(name: .D, intonation: .natural),
                      sharpEquivalent: Note(name: .C, intonation: .doubleSharp),
                      flatEquivalent: Note(name: .E, intonation: .doubleFlat)),
        
        EHarmonicNote(note: Note(name: .E, intonation: .flat),
                      sharpEquivalent: Note(name: .D, intonation: .sharp),
                      flatEquivalent: Note(name: .F, intonation: .doubleFlat)),
        
        EHarmonicNote(note: Note(name: .E, intonation: .natural),
                      sharpEquivalent: Note(name: .D, intonation: .doubleSharp),
                      flatEquivalent: Note(name: .F, intonation: .flat)),
        
        EHarmonicNote(note: Note(name: .F, intonation: .natural),
                      sharpEquivalent: Note(name: .E, intonation: .sharp),
                      flatEquivalent: Note(name: .G, intonation: .doubleFlat)),
        
        EHarmonicNote(note: Note(name: .F, intonation: .sharp),
                      sharpEquivalent: Note(name: .E, intonation: .doubleSharp),
                      flatEquivalent: Note(name: .G, intonation: .flat)),
        
        EHarmonicNote(note: Note(name: .G, intonation: .natural),
                      sharpEquivalent: Note(name: .F, intonation: .doubleSharp),
                      flatEquivalent: Note(name: .A, intonation: .doubleFlat)),
        
        EHarmonicNote(note: Note(name: .G, intonation: .sharp),
                      flatEquivalent: Note(name: .A, intonation: .flat)),
        
        EHarmonicNote(note: Note(name: .A, intonation: .natural),
                      sharpEquivalent: Note(name: .G, intonation: .doubleSharp),
                      flatEquivalent: Note(name: .B, intonation: .doubleFlat)),
        
        EHarmonicNote(note: Note(name: .B, intonation: .flat),
                      sharpEquivalent: Note(name: .A, intonation: .sharp),
                      flatEquivalent: Note(name: .C, intonation: .doubleFlat)),
        
        EHarmonicNote(note: Note(name: .B, intonation: .natural),
                      sharpEquivalent: Note(name: .A, intonation: .doubleSharp),
                      flatEquivalent: Note(name: .C, intonation: .flat))
    ]
    
    public static func equivalent(of note:Note) -> EHarmonicNote? {
        
        return eharmonics.filter { $0.contains(note: note) }
            .first
        
        
    }
}
