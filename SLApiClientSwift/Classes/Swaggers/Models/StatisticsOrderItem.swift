//
// StatisticsOrderItem.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Товар в заказе */

open class StatisticsOrderItem: Codable {

    /** Полная стоимость за все количество товара */
    public var cost: Float
    /** Идентификатор товара */
    public var id: String
    /** Название товара */
    public var name: String
    /** Количество */
    public var quantity: Float


    public init(cost: Float, id: String, name: String, quantity: Float) {
        self.cost = cost
        self.id = id
        self.name = name
        self.quantity = quantity
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(cost, forKey: "cost")
        try container.encode(id, forKey: "id")
        try container.encode(name, forKey: "name")
        try container.encode(quantity, forKey: "quantity")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                cost = try container.decode(Float.self, forKey: "cost")
                id = try container.decode(String.self, forKey: "id")
                name = try container.decode(String.self, forKey: "name")
                quantity = try container.decode(Float.self, forKey: "quantity")
    }
}

