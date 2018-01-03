//
//  TOPCoffee.swift
//  VendingMachine
//
//  Created by TaeHyeonLee on 2017. 12. 8..
//  Copyright © 2017 ChocOZerO. All rights reserved.
//

import Foundation

class TOPCoffee: Coffee {
    private var taste: String = CoffeeCategory.topCoffee.name

    init(hot: Bool) {
        super.init(coffeeCategory: Coffee.CoffeeCategory.topCoffee, dateOfManufacture: Date(), hot: hot)
    }

    required init(from decoder: Decoder) throws {
        var value = try decoder.unkeyedContainer()
        taste = try value.decode(String.self)
        try super.init(from: decoder)
    }

    override var description: String {
        return "\(taste)(\(String(describing: TOPCoffee.self))) - " + super.description
    }

}
