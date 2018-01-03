//
//  Kantata.swift
//  VendingMachine
//
//  Created by TaeHyeonLee on 2017. 12. 8..
//  Copyright © 2017 ChocOZerO. All rights reserved.
//

import Foundation

class Cantata: Coffee {
    private var taste: String = CoffeeCategory.cantata.name

    init(hot: Bool) {
        super.init(coffeeCategory: Coffee.CoffeeCategory.cantata, dateOfManufacture: Date(), hot: hot)
    }

    required init(from decoder: Decoder) throws {
        var value = try decoder.unkeyedContainer()
        taste = try value.decode(String.self)
        try super.init(from: decoder)
    }

    override var description: String {
        return "\(taste)(\(String(describing: Cantata.self))) - " + super.description
    }

}
