//
// Delivery.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Данные о доставке */

open class Delivery: Codable {

    /** Объект с кастомными данными о доставке */
    public var data: Any?
    /** Цена доставки со скидкой */
    public var discountPrice: Double?
    /** Название доставки */
    public var name: String?
    /** Цена доставки */
    public var price: Double?
    /** Ключ типа доставки */
    public var type: String?


    public init(data: Any?, discountPrice: Double?, name: String?, price: Double?, type: String?) {
        self.data = data
        self.discountPrice = discountPrice
        self.name = name
        self.price = price
        self.type = type
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(data, forKey: "data")
        try container.encodeIfPresent(discountPrice, forKey: "discountPrice")
        try container.encodeIfPresent(name, forKey: "name")
        try container.encodeIfPresent(price, forKey: "price")
        try container.encodeIfPresent(type, forKey: "type")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                data = try container.decodeIfPresent(Any.self, forKey: "data")
                discountPrice = try container.decodeIfPresent(Double.self, forKey: "discountPrice")
                name = try container.decodeIfPresent(String.self, forKey: "name")
                price = try container.decodeIfPresent(Double.self, forKey: "price")
                type = try container.decodeIfPresent(String.self, forKey: "type")
    }
}
