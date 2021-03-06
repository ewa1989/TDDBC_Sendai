//
//  StrawberryTest.swift
//  TDDBCSwiftTests
//
//  Created by UCHIDA Yusuke on 2021/03/06.
//  Copyright © 2021 tddbc. All rights reserved.
//

// お題1
// いちごを出荷するには、品種とサイズを知る必要があります。
//品種とサイズを与えて、いちごを作成し、その文字列表現を取得しましょう。
//文字列表現の例: あまおう: S とちおとめ: M もういっこ: L
//なお、品種は、 あまおう とちおとめ もういっこ の3種類、いちごのサイズは S M L LL の4種類です。

// TODO
// - [x] Strawberryをstructで作成する
//   - [x] 品種とサイズを引数に取るコンストラクタを作成する
//   - [x] 品種をenum: Stringで定義する
//   - [x] サイズをenum: Stringで定義する
// - [x] Strawberryの文字列表現を取得する
//   - [x] 文字列表現を取得できる方法を作成する
//   - [x] 取得できる文字列表現の書式を決定する

import XCTest

class StrawberryTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    // MARK: 品種とサイズを渡して文字列表現を出力する
    
    func testあまおうとサイズSを入力したらあまおう_Sの文字列表現を取得できる() {
        let subject = Strawberry(.AMAOU, .S)

        XCTAssertEqual(subject.toString(), "あまおう: S")
    }
    
    func testとちおとめとサイズMを入力したらとちおとめ_Mの文字列表現を取得できる() {
        let subject = Strawberry(.TOCHIOTOME, .M)

        XCTAssertEqual(subject.toString(), "とちおとめ: M")
    }
    
    func testもういっことサイズLLを入力したらもういっこ_LLの文字列表現を取得できる() {
        let subject = Strawberry(.MOUIKKO, .LL)
        
        XCTAssertEqual(subject.toString(), "もういっこ: LL")
    }
    
    func testあまおうとサイズLを入力したらあまおう_Lの文字列表現を取得できる() {
        let subject = Strawberry(.AMAOU, .L)
        
        XCTAssertEqual(subject.toString(), "あまおう: L")
    }
}
