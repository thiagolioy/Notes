//
//  ChromaticScale.swift
//  Pods
//
//  Created by Thiago Lioy on 2/12/16.
//
//

import Foundation

public struct ChromaticScale{
    public static let notes:[Note] = ChromaticScale.createNotes()
    public static let intervals:[NoteInterval] = ChromaticScale.createIntervals()
    
    private static func createNotes() -> [Note]{
        return [
            Note(name: .C, intonation: .Natural),
            Note(name: .C, intonation: .Sharp),
            Note(name: .D, intonation: .Natural),
            Note(name: .D, intonation: .Sharp),
            Note(name: .E, intonation: .Natural),
            Note(name: .F, intonation: .Natural),
            Note(name: .F, intonation: .Sharp),
            Note(name: .G, intonation: .Natural),
            Note(name: .G, intonation: .Sharp),
            Note(name: .A, intonation: .Natural),
            Note(name: .A, intonation: .Sharp),
            Note(name: .B, intonation: .Natural)
        ]
    }
    
    private static func createIntervals() -> [NoteInterval]{
        return (0..<12).map {_ in NoteInterval.Halfstep}
    }
    
    public static func index(forNote note:Note) -> Int?{
        for (i,n) in notes.enumerate(){
            if n.equalOrEqvl(toNote: note) {
                return i
            }
        }
        return nil
    }
    public static func add(interval:NoteInterval, toNote note:Note) -> Note{
        let max = interval.rawValue + 1
        var result = note
        max.times{result = result.next()}
        return result
    }
    public static func minus(interval:NoteInterval, toNote note:Note)-> Note{
        let max = interval.rawValue + 1
        var result = note
        max.times{result = result.previous()}
        return result
    }
    
    public static func next(ofNote note:Note) -> Note{
        var index:Int = self.index(forNote: note)!
        index++
        let condition:Bool = index > (notes.count - 1)
        let result = condition ? notes.first : notes[index]
        return result!
    }
    
    public static func previous(ofNote note:Note) -> Note{
        var index:Int = self.index(forNote: note)!
        index--
        let result = index < 0 ? notes.last : notes[index]
        return result!
    }
}
