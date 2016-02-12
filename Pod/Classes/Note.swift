//
//  Note.swift
//  Pods
//
//  Created by Thiago Lioy on 2/8/16.
//
//

import Foundation

public enum NoteName:String{
    case A,B,C,D,E,F,G
}

public enum NoteIntonation:String{
    case Flat = "♭",Natural = "",Sharp = "♯"
}

public enum NoteInterval:Int{
    case Halfstep,Wholestep
}

public struct Note : Hashable{
    public let name: NoteName
    public let intonation: NoteIntonation
    public var hashValue: Int {
        return self.name.hashValue + self.intonation.hashValue
    }
    
    public func fullname() -> String{
        return name.rawValue + intonation.rawValue
    }
    
    public init(name:NoteName, intonation:NoteIntonation){
        self.name = name
        self.intonation = intonation
    }
}

public struct EHarmonicEquivalent{
    private static let eharmonics:[Note:Note] = [
        Note(name: .C, intonation: .Sharp):Note(name: .D, intonation: .Flat),
        Note(name: .D, intonation: .Sharp):Note(name: .E, intonation: .Flat),
        Note(name: .F, intonation: .Sharp):Note(name: .G, intonation: .Flat),
        Note(name: .G, intonation: .Sharp):Note(name: .A, intonation: .Flat),
        Note(name: .A, intonation: .Sharp):Note(name: .B, intonation: .Flat)
    ]

    public static func equivalent(ofNote note:Note) -> Note?{
        for (key,value) in eharmonics{
            if key == note{
                return value
            }else if value == note{
                return key
            }
        }
        return nil
    }
}

public func ==(lhs: Note, rhs: Note) -> Bool{
    return (lhs.name == rhs.name) && (lhs.intonation == rhs.intonation)
}

public extension Note{
    public  func add(interval:NoteInterval) -> Note{
        return ChromaticScale.add(interval, toNote: self)
    }
    public func minus(interval:NoteInterval)-> Note{
        return ChromaticScale.minus(interval, toNote: self)
    }
    public func eharmonicEquivalent() -> Note?{
        return EHarmonicEquivalent.equivalent(ofNote: self)
    }
    
    public func hasEharmonicEquivalent() -> Bool{
        if let  _ = EHarmonicEquivalent.equivalent(ofNote: self){
            return true
        }
        return false
    }
    public func next() -> Note{
        return ChromaticScale.next(ofNote: self)
    }
    public func previous() -> Note{
        return ChromaticScale.previous(ofNote: self)
    }
}