//
//  StrawberryPackTest.swift
//  TDDBCSwiftTests
//
//  Created by UCHIDA Yusuke on 2021/03/06.
//  Copyright © 2021 tddbc. All rights reserved.
//

//お題4
//一般に、パック内のいちごは同一品種、サイズのばらつきは少ないほどよいと言われています。
//
//「いちご3個入パック」を作成し、次のふるまいを実装してください。
//
//課題4-1: 品種の純粋さ
//いちごパックが「純粋かどうか」を判定するふるまいを実装してください。
//
//いちごパック内のすべていちごが同一品種であるなら、純粋です
//いちごパック内に複数の品種のいちごが存在している場合は、純粋ではありません

// TODO
// - [x] いちご3個入パックを作成できる
// - [] いちごパックが純粋かどうかを判定できる
//   - [] すべて同じ品種でパックを作成したら純粋と判定される
//   - [] 1つ違う品種を混ぜてパックを作成したら純粋でないと判定される

//課題4-2: いちごのばらつき
//いちごパック内のいちごの最小サイズと最大サイズの差を計算できるようにしてください。
//
//以下に、例を示します。
//
//あまおう L とちおとめ L もういっこ L なら、サイズ差は 0 です
//あまおう S とちおとめ M もういっこ L なら、サイズ差は 2 です
//あまおう L とちおとめ M もういっこ L なら、サイズ差は 1 です

// TODO
// - [] 最大・最小サイズ差を計算できる

import XCTest

class StrawberryPackTest: XCTestCase {
    var subject: StrawberryPack!
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testいちご3個入パックを作成できる() {
        subject = StrawberryPack(Strawberry(.AMAOU, .S),
                                 Strawberry(.TOCHIOTOME, .M),
                                 Strawberry(.MOUIKKO, .L))
        XCTAssertNotNil(subject)
    }
}
