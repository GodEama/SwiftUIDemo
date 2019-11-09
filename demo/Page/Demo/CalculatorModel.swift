//
//  CalculatorModel.swift
//  demo
//
//  Created by iOSer on 2019/11/8.
//  Copyright © 2019 iOSer. All rights reserved.
//

import SwiftUI
import Combine

class CalculatorModel: ObservableObject {

    @Published var brain: CalculatorBrain = .left("0")
    @Published var history: [CalculatorButtonItem] = []

    var temporaryKept: [CalculatorButtonItem] = []

    func apply(_ item: CalculatorButtonItem) {
        brain = brain.apply(item: item)
        history.append(item)

        temporaryKept.removeAll()
        slidingIndex = Float(totalCount)
    }

    var historyDetail: String {
        history.map { $0.description }.joined()
    }

    func keepHistory(upTo index: Int) {
        precondition(index <= totalCount, "Out of index.")

        let total = history + temporaryKept

        history = Array(total[..<index])
        temporaryKept = Array(total[index...])

        brain = history.reduce(CalculatorBrain.left("0")) {
            result, item in
            result.apply(item: item)
        }
    }

    var totalCount: Int {
        history.count + temporaryKept.count
    }

    var slidingIndex: Float = 0 {
        didSet {
            keepHistory(upTo: Int(slidingIndex))
        }
    }
}

