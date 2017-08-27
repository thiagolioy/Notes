//
//  Scale.swift
//  Pods
//
//  Created by Thiago Lioy on 2/8/16.
//
//

import Foundation

public enum DiatonicHarmony:String{
    case Major,Minor
    
    private func naturalScale(inKey key:Note) -> Scale{
        if self == .Major{
            return Scale(kind: .Ionian, key: key)
        }
        return Scale(kind: .Aeolian, key: key)
    }
    
    private func scaleKinds() -> [ScaleKind]{
        if self == .Major{
            return [.Ionian,.Aeolian,.Aeolian,.Ionian,.Mixolydian,.Aeolian,.Locrian,]
        }
        return [.Aeolian,.Locrian,.Ionian,.Aeolian,.Aeolian,.Ionian,.Ionian]
    }
    
    func harmony(inKey key:Note) -> [Scale]{
        let naturalScale = self.naturalScale(inKey: key)
        let kinds:[ScaleKind] = self.scaleKinds()
        var result:[Scale] = []
        for (i,n) in naturalScale.notes().enumerate(){
            if(i > kinds.count-1){break}
            result.append(Scale(kind: kinds[i], key: n))
        }
        return result
    }
    
}


public enum ChordKind:String{
    case Major7,dom7,Minor7,Minor7b5 = "Minor7♭5"
    
    func naturalScale() -> ScaleKind{
        switch self{
        case ChordKind.Major7:
            return .Ionian
        case ChordKind.Minor7:
            return .Aeolian
        case ChordKind.dom7:
            return .Mixolydian
        case ChordKind.Minor7b5:
            return .Locrian
        }
    }
}

public enum ScaleKind{
    case Ionian,Dorian,Phrygian,Lydian,Mixolydian,Aeolian,Locrian
    
    func intervals() -> [NoteInterval]{
        switch self{
        case .Ionian:
            return [.Wholestep,.Wholestep,.Halfstep,.Wholestep,.Wholestep,.Wholestep,.Halfstep]
        case .Dorian:
            return [.Wholestep,.Halfstep,.Wholestep,.Wholestep,.Wholestep,.Halfstep,.Wholestep]
        case .Phrygian:
            return [.Halfstep,.Wholestep,.Wholestep,.Wholestep,.Halfstep,.Wholestep,.Wholestep]
        case .Lydian:
            return [.Wholestep,.Wholestep,.Wholestep,.Halfstep,.Wholestep,.Wholestep,.Halfstep]
        case .Mixolydian:
            return [.Wholestep,.Wholestep,.Halfstep,.Wholestep,.Wholestep,.Halfstep,.Wholestep]
        case .Aeolian:
            return [.Wholestep,.Halfstep,.Wholestep,.Wholestep,.Halfstep,.Wholestep,.Wholestep]
        case .Locrian:
            return [.Halfstep,.Wholestep,.Wholestep,.Halfstep,.Wholestep,.Wholestep,.Wholestep]
        }
    }
    
    func chordKind() -> ChordKind{
        switch self{
        case .Ionian,.Lydian:
            return ChordKind.Major7
        case .Aeolian,.Phrygian,.Dorian:
            return ChordKind.Minor7
        case .Mixolydian:
            return ChordKind.dom7
        case .Locrian:
            return ChordKind.Minor7b5
        }
    }
    
    func chordTones(inKey key:Note) -> [Note]{
        let ns = self.notes(inKey: key)
        return [ns[0],ns[2],ns[4],ns[6]]
    }
    
    func notes(inKey key:Note) -> [Note]{
        var result:[Note] = [key]
        for i:NoteInterval in self.intervals(){
            let lastNote = result.last!
            var noteToAdd = lastNote.add(i)
            if noteToAdd.intonation == .Sharp{
                noteToAdd = noteToAdd.eharmonicEquivalent()!
            }
            result.append(noteToAdd)
        }
        return result
    }
}


public struct Scale {
    public let kind: ScaleKind
    public let key: Note
    
    public init(kind:ScaleKind = .Ionian,key:Note = Note(name: .C, intonation: .Natural)){
        self.kind = kind
        self.key = key
    }
}

public extension Scale{
    
    public func chordName() -> String{
        return self.key.fullname() + self.kind.chordKind().rawValue
    }
    public func chordKind() -> ChordKind{
        return self.kind.chordKind()
    }
    public func chordTones() -> [Note]{
        return self.kind.chordTones(inKey: self.key)
    }
    public func intervals() -> [NoteInterval]{
        return self.kind.intervals()
    }
    
    public func notes() -> [Note]{
        return self.kind.notes(inKey: self.key)
    }
    
    public func majorPentatonic() -> [Note]{
        var ns:[Note] = ScaleKind.Ionian.notes(inKey: self.key)
        return [ns[0],ns[1],ns[2],ns[4],ns[5],ns[7]]
    }
    
    public func minorPentatonic() -> [Note]{
        var ns:[Note] = ScaleKind.Aeolian.notes(inKey: self.key)
        return [ns[0],ns[2],ns[3],ns[4],ns[6],ns[7]]
    }
    
}