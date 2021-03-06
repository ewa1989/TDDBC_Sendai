//
//  Strawberry.swift
//  TDDBCSwift
//
//  Created by UCHIDA Yusuke on 2021/03/06.
//  Copyright © 2021 tddbc. All rights reserved.
//

import Foundation

enum Type {
    case AMAOU
}

enum Size {
    case S
}

struct Strawberry {
    init(_ type: Type, _ size: Size) {
    }
    
    func toString() -> String {
        return "あまおう: S"
    }
}
