//
//  MixolydianMode.swift
//  Notes
//
//  Created by Thiago Lioy on 03/09/17.
//  Copyright © 2017 com.tplioy. All rights reserved.
//

import Foundation

public struct MixolydianMode: Scale {
    public let names: [String] = [
        "Mixolydian Mode"
    ]
    public let intervals: [Note.Interval] = [
        .wholestep,.wholestep,.halfstep,.wholestep,.wholestep,.halfstep,.wholestep
    ]
    
    public let key: Note
    
    public init(key: Note) {
        self.key = key
    }
}
