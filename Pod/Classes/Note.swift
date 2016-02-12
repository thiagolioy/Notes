//
//  Note.swift
//  Pods
//
//  Created by Thiago Lioy on 2/8/16.
//
//

import Foundation

public enum NoteName{
    case A,B,C,D,E,F,G
}

public enum NoteIntonation{
    case Flat,Natural,Sharp
}

public enum NoteInterval:Int{
    case Halfstep,Wholestep
}

public struct Note : Equatable{
    public let name: NoteName
    public let intonation: NoteIntonation

    
    public init(name:NoteName, intonation:NoteIntonation){
        self.name = name
        self.intonation = intonation
    }
}

public func ==(lhs: Note, rhs: Note) -> Bool{
    return (lhs.name == rhs.name) && (lhs.intonation == rhs.intonation)
}


public extension Note{
    public  func add(interval:NoteInterval) -> Note{
        let max = interval.rawValue + 1
        let results = (0...max).map{ _ in  self.next() }
        return results.last!
    }
    public func minus(interval:NoteInterval)-> Note{
        let max = interval.rawValue + 1
        let results = (0...max).map{ _ in  self.previous() }
        return results.last!
    }
    public func next() -> Note{
        return ChromaticScale.next(ofNote: self)
    }
    public func previous() -> Note{
        return ChromaticScale.previous(ofNote: self)
    }
}