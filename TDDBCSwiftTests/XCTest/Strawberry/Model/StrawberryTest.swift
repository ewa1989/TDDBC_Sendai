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

// - [x] 品種と重さを与えていちごを作成できる
// - [] 与えた重さによってサイズが決まる
//   - [x] 25g以上 → LL
//   - [x] 20g以上 → L
//   - [X] 10g以上 → M
//   - [] 1g以上 → S
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

    func testあまおうと重さ35g入力したらあまおう_LLの文字列表現を取得できる() {
        let subject = Strawberry(.AMAOU, 35)

        XCTAssertEqual(subject.toString(), "あまおう: LL")
    }

    func testとちおとめと重さ25g入力したらとちおとめ_LLの文字列表現を取得できる() {
        let subject = Strawberry(.TOCHIOTOME, 25)

        XCTAssertEqual(subject.toString(), "とちおとめ: LL")
    }

    func testとちおとめと重さ24g入力したらとちおとめ_Lの文字列表現を取得できる() {
        let subject = Strawberry(.TOCHIOTOME, 24)
        
        XCTAssertEqual(subject.toString(), "とちおとめ: L")
    }

    func testもういっこと重さ20g入力したらもういっこ_Lの文字列表現を取得できる() {
        let subject = Strawberry(.MOUIKKO, 20)

        XCTAssertEqual(subject.toString(), "もういっこ: L")
    }

    func testあまおうと重さ10g入力したらあまおう_Mの文字列表現を取得できる() {
        let subject = Strawberry(.AMAOU, 10)

        XCTAssertEqual(subject.toString(), "あまおう: M")
    }
}
