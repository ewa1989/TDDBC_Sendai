//
//  Strawberry.swift
//  TDDBCSwift
//
//  Created by UCHIDA Yusuke on 2021/03/06.
//  Copyright © 2021 tddbc. All rights reserved.
//

import Foundation

enum Type: String {
    case AMAOU = "あまおう"
    case TOCHIOTOME = "とちおとめ"
    case MOUIKKO = "もういっこ"
}

enum Size: String {
    case S
    case M
    case L
    case LL
}

struct Strawberry {
    let type: Type
    let size: Size

    init(_ type: Type, _ size: Size) {
        self.type = type
        self.size = size
    }
    
    init(_ type: Type, _ weight: Int) {
        self.type = type
        
        if (weight >= 25) {
            self.size = .LL
        } else {
            self.size = .L
        }
    }
    
    func toString() -> String {
        return "\(type.rawValue): \(size)"
    }
}
