//
// ServicePriceInShop.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Услуга */

open class ServicePriceInShop: Codable {

    /** Стоимость услуги в магазине */
    public var price: Float?
    /** Идентификатор */
    public var serviceId: UUID?
    /** Идентификатор */
    public var shopId: UUID?


    public init(price: Float?, serviceId: UUID?, shopId: UUID?) {
        self.price = price
        self.serviceId = serviceId
        self.shopId = shopId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(price, forKey: "price")
        try container.encodeIfPresent(serviceId, forKey: "serviceId")
        try container.encodeIfPresent(shopId, forKey: "shopId")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                price = try container.decodeIfPresent(Float.self, forKey: "price")
                serviceId = try container.decodeIfPresent(UUID.self, forKey: "serviceId")
                shopId = try container.decodeIfPresent(UUID.self, forKey: "shopId")
    }
}
