//
//  ChromaticScale.swift
//  Notes
//
//  Created by Thiago Lioy on 26/08/17.
//  Copyright © 2017 com.tplioy. All rights reserved.
//

import Foundation

public struct ChromaticScale{
    public static let notes:[Note] = [
        Note(name: .C, intonation: .natural),
        Note(name: .C, intonation: .sharp),
        Note(name: .D, intonation: .natural),
        Note(name: .D, intonation: .sharp),
        Note(name: .E, intonation: .natural),
        Note(name: .F, intonation: .natural),
        Note(name: .F, intonation: .sharp),
        Note(name: .G, intonation: .natural),
        Note(name: .G, intonation: .sharp),
        Note(name: .A, intonation: .natural),
        Note(name: .A, intonation: .sharp),
        Note(name: .B, intonation: .natural)
    ]
    
    public static let intervals:[Note.Interval] = [
        .halfstep,.halfstep,.halfstep,.halfstep,
        .halfstep,.halfstep,.halfstep,.halfstep,
        .halfstep,.halfstep,.halfstep,.halfstep
    ]
    
}

extension ChromaticScale {
    public static func index(of note:Note) -> Int?{
        return notes.enumerated()
            .filter{ $1 == note || $1.equivalent(to: note) }
            .first?.offset
    }
}

extension ChromaticScale {
    public static func add(interval:Note.Interval, to note: Note) -> Note {
        let max = interval.rawValue + 1
        var result = note
        (0..<max).forEach{ _ in result = result.next() }
        return result
    }
    public static func minus(interval:Note.Interval, to note:Note) -> Note {
        let max = interval.rawValue + 1
        var result = note
        (0..<max).forEach{ _ in result = result.previous() }
        return result
    }
    
//    public static func intervalDistanceBtw(note:Note, toNote secondNote:Note) -> [Note.Interval] {
//        guard let firstIndex = index(of: note) else {
//            return []
//        }
//        
//        guard let lastIndex = index(of: secondNote) else {
//            return []
//        }
//    }
}

extension ChromaticScale {
    public static func next(of note:Note) -> Note {
        let index = self.index(of: note)! + 1
        let condition = index > (notes.count - 1)
        let result = condition ? notes.first : notes[index]
        return result!
    }
    
    public static func previous(of note:Note) -> Note{
        let index = self.index(of: note)! - 1
        let result = index < 0 ? notes.last : notes[index]
        return result!
    }
}
