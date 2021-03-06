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
        case weight where weight >= 25:
            return .LL
        case weight where weight >= 20:
            return .L
        case weight where weight >= 10:
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
