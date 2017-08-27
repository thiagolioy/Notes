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
    
    func scaleNotes(inKey key: Note) -> [Note]
}

public extension Scale {
    public func scaleNotes(inKey key: Note) -> [Note] {
        var notes = [key]
        for interval in intervals {
            let lastNote = notes.last!
            var currentNote = lastNote.add(interval: interval)
            if currentNote.intonation == .sharp {
                currentNote = currentNote.eharmonicEquivalent()!
            }
            notes.append(currentNote)
        }
        return notes
    }
}
