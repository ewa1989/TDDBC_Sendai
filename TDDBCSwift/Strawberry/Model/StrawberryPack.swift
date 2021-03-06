//
//  StrawberryPack.swift
//  TDDBCSwift
//
//  Created by UCHIDA Yusuke on 2021/03/06.
//  Copyright © 2021 tddbc. All rights reserved.
//

import Foundation

struct StrawberryPack {
    private let strawberries: [Strawberry]
    
    init(_ first: Strawberry, _ second: Strawberry, _ third: Strawberry) {
        strawberries = [first, second, third]
    }
}
