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

//いちごは重さによってサイズが決定されます。
//重くなるにしたがってサイズが大きくなります。
//
//サイズではなく、重さを直接与えて、いちごを作成できるようにしましょう。
//ただし、いちごの重さは 1g以上とし 0g以下は対象としなくてよいものとします。
//なお、いちごのサイズは、重さによって決まります。
//重さ と サイズ の関係性は以下のとおりです。
//
//25g以上 → LL
//20g以上 → L
//10g以上 → M
//1g以上 → S
//例えば、 重さが 8g の あまおうの場合は、 あまおう: S という文字列表現になります。

//TODO
// - [x] 品種と重さを与えていちごを作成できる
// - [x] 与えた重さによってサイズが決まる
//   - [x] 25g以上 → LL
//   - [x] 20g以上 → L
//   - [X] 10g以上 → M
//   - [x] 1g以上 → S

// NO.3
//農家さんは、いちごを出荷するにあたり、見栄えをとても重視します。
//特に、品種やサイズが揃っていると、見栄えがよいと判断します。
//
//実際は、見栄えは品種やサイズだけでなく、他の情報(例: いちごの色つやなど)も影響します。しかし、今回のお題では、品種とサイズだけで判断するものとします。
//
//課題3-1: いちごの品種
//2つのいちごが同一品種かどうかを判断できるようにしましょう。
//
//以下に、例を示します。
//
//あまおう: S と あまおう: L は、同じ品種です
//あまおう: LL と とちおとめ: LL は、違う品種です

//TODO
// - [x] 品種が同じか否かを判断する
//   - [x] 品種を取得するプロパティを作る

//課題3-2: いちごのサイズ差
//2つのいちごのサイズ差を取得できるようにしましょう。
//
//以下に、例を示します。
//
//あまおう LL と とちおとめ L の サイズ差 は 1 です
//もういっこ LL と あまおう LL の サイズ差 は 0 です
//もういっこ S と もういっこ LL の サイズ差 は 3 です

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

    // MARK: - 与えた重さによってサイズが決まる

    func testとちおとめと重さ25g入力したらとちおとめ_LLの文字列表現を取得できる() {
        let subject = Strawberry(.TOCHIOTOME, 25)

        XCTAssertEqual(subject.toString(), "とちおとめ: LL")
    }

    func testもういっこと重さ20g入力したらもういっこ_Lの文字列表現を取得できる() {
        let subject = Strawberry(.MOUIKKO, 20)

        XCTAssertEqual(subject.toString(), "もういっこ: L")
    }

    func testあまおうと重さ10g入力したらあまおう_Mの文字列表現を取得できる() {
        let subject = Strawberry(.AMAOU, 10)

        XCTAssertEqual(subject.toString(), "あまおう: M")
    }
    
    func testもういっこと重さ1g入力したらもういっこ_Sの文字列表現を取得できる() {
        let subject = Strawberry(.MOUIKKO, 1)

        XCTAssertEqual(subject.toString(), "もういっこ: S")
    }

// MARK:- 品種が同じか否かを判断する
    func testあまおうLとあまおうSは同じ品種である() {
        let subject = Strawberry(.AMAOU, .L)
        let another = Strawberry(.AMAOU, .S)
        XCTAssert(subject.isSameType(another))
    }
    
    func testあまおうMととちおとめMは違う品種である() {
        let subject = Strawberry(.AMAOU, .M)
        let another = Strawberry(.TOCHIOTOME, .M)
        XCTAssertFalse(subject.isSameType(another))
    }
}
