//
//  Scale.swift
//  Pods
//
//  Created by Thiago Lioy on 2/8/16.
//
//

import Foundation

public enum ScaleKind{
    case Chromatic
}


public struct ChromaticScale{
    static let notes:[Note] = ChromaticScale.createNotes()
    static let intervals:[NoteInterval] = ChromaticScale.createIntervals()

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
            if n == note { return i }
        }
        return nil
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

public struct Scale {
    let kind: ScaleKind
    let key: Note
    
    public init(kind:ScaleKind = .Chromatic,key:Note = Note(name: .C, intonation: .Natural)){
        self.kind = kind
        self.key = key
    }
    
    

}