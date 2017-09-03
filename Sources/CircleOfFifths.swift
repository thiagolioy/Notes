//
//  CircleOfFifths.swift
//  Notes
//
//  Created by Thiago Lioy on 03/09/17.
//  Copyright © 2017 com.tplioy. All rights reserved.
//

import Foundation

fileprivate struct CircleItem {
    let note: Note
    let relativeMinor: Note
    let numberOfAccidents: Int
    let accidentKind: Note.Intonation?
    
    init(note: Note,
         relativeMinor: Note,
         numberOfAccidents: Int = 0,
         accidentKind: Note.Intonation? = nil) {
        self.note = note
        self.relativeMinor = relativeMinor
        self.numberOfAccidents = numberOfAccidents
        self.accidentKind = accidentKind
    }
    
    func contains(note: Note) -> Bool {
        return self.note == note ||
               self.relativeMinor == note
    }
}


public struct CircleOfFifths {
    fileprivate static let items: [CircleItem] = [
        CircleItem(note: Note(name: .C, intonation: .natural),
                   relativeMinor: Note(name: .A, intonation: .natural)),
        
        CircleItem(note: Note(name: .G, intonation: .natural),
                   relativeMinor: Note(name: .E, intonation: .natural),
                   numberOfAccidents: 1,
                   accidentKind: .sharp),
        
        CircleItem(note: Note(name: .D, intonation: .natural),
                   relativeMinor: Note(name: .B, intonation: .natural),
                   numberOfAccidents: 2,
                   accidentKind: .sharp),
        
        CircleItem(note: Note(name: .A, intonation: .natural),
                   relativeMinor: Note(name: .F, intonation: .sharp),
                   numberOfAccidents: 3,
                   accidentKind: .sharp),
        
        CircleItem(note: Note(name: .E, intonation: .natural),
                   relativeMinor: Note(name: .C, intonation: .sharp),
                   numberOfAccidents: 4,
                   accidentKind: .sharp),
        
        CircleItem(note: Note(name: .B, intonation: .natural),
                   relativeMinor: Note(name: .G, intonation: .sharp),
                   numberOfAccidents: 5,
                   accidentKind: .sharp),
        
        CircleItem(note: Note(name: .F, intonation: .sharp),
                   relativeMinor: Note(name: .D, intonation: .sharp),
                   numberOfAccidents: 6,
                   accidentKind: .sharp),
        
        CircleItem(note: Note(name: .C, intonation: .sharp),
                   relativeMinor: Note(name: .A, intonation: .sharp),
                   numberOfAccidents: 7,
                   accidentKind: .sharp),
        
        CircleItem(note: Note(name: .C, intonation: .flat),
                   relativeMinor: Note(name: .A, intonation: .flat),
                   numberOfAccidents: 7,
                   accidentKind: .flat),
        
        CircleItem(note: Note(name: .G, intonation: .flat),
                   relativeMinor: Note(name: .E, intonation: .flat),
                   numberOfAccidents: 6,
                   accidentKind: .flat),
        
        CircleItem(note: Note(name: .D, intonation: .flat),
                   relativeMinor: Note(name: .B, intonation: .flat),
                   numberOfAccidents: 5,
                   accidentKind: .flat),
        
        CircleItem(note: Note(name: .A, intonation: .flat),
                   relativeMinor: Note(name: .F, intonation: .natural),
                   numberOfAccidents: 4,
                   accidentKind: .flat),
        
        CircleItem(note: Note(name: .E, intonation: .flat),
                   relativeMinor: Note(name: .C, intonation: .natural),
                   numberOfAccidents: 3,
                   accidentKind: .flat),
        
        CircleItem(note: Note(name: .B, intonation: .flat),
                   relativeMinor: Note(name: .G, intonation: .natural),
                   numberOfAccidents: 2,
                   accidentKind: .flat),
        
        CircleItem(note: Note(name: .F, intonation: .natural),
                   relativeMinor: Note(name: .D, intonation: .natural),
                   numberOfAccidents: 1,
                   accidentKind: .flat)
        
    ]
    
    public static func accidentKind(inKey key: Note) -> Note.Intonation? {
        return items.filter { $0.contains(note: key) }
                    .first?.accidentKind
    }
}
