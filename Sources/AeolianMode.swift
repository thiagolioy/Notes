//
//  AeolianMode.swift
//  Notes
//
//  Created by Thiago Lioy on 27/08/17.
//  Copyright © 2017 com.tplioy. All rights reserved.
//

import Foundation

public struct AeolianMode: Scale {
    public let names: [String] = [
        "Aeolian Mode",
        "Minor Scale"
    ]
    public let intervals: [Note.Interval] = [
        .wholestep,.halfstep,.wholestep,.wholestep,.halfstep,.wholestep,.wholestep
    ]

}
