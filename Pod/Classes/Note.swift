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

extension Int {
    func times(f: () -> ()) {
        if self > 0 {
            for _ in 0..<self {
                f()
            }
        }
    }
}

public extension Note{
    public  func add(interval:NoteInterval) -> Note{
        let max = interval.rawValue + 1
        var result = self
        max.times{result = result.next()}
        return result
    }
    public func minus(interval:NoteInterval)-> Note{
        let max = interval.rawValue + 1
        var result = self
        max.times{result = result.previous()}
        return result
    }
    public func next() -> Note{
        return ChromaticScale.next(ofNote: self)
    }
    public func previous() -> Note{
        return ChromaticScale.previous(ofNote: self)
    }
}