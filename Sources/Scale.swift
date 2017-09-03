//
//  Scale.swift
//  Notes
//
//  Created by Thiago Lioy on 26/08/17.
//  Copyright © 2017 com.tplioy. All rights reserved.
//

import Foundation

public protocol Scale {
    var names: [String] {get}
    var intervals: [Note.Interval] {get}
    var key: Note {get}
    
    init(key: Note)
    
    func scaleNotes() -> [Note]
}

public extension Scale {
    
    public func scaleNotes() -> [Note] {
        var notes = [key]
        for interval in intervals {
            let note = notes.last!
            let nextNoteName = note.name.next()
            var nextNote = note.add(interval: interval)
            
            if nextNote.name != nextNoteName {
                if let equivalentNote = nextNote.eharmonicEquivalent() {
                    nextNote = equivalentNote
                }
            }
            notes.append(nextNote)
        }
        
        return notes
    }
}
