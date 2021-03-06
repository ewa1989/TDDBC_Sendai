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
        self.size = Strawberry.determineSize(basedOn: weight)
    }
    
    private static func determineSize(basedOn weight: Int) -> Size {
        switch weight {
        case (25...):
            return .LL
        case (20...24):
            return .L
        case (10...19):
            return .M
        default :
            return .S
        }
    }
    
    func toString() -> String {
        return "\(type.rawValue): \(size)"
    }
    
    func isSameType(_ another: Strawberry) -> Bool {
        return self.type == another.type
    }
}
