//
// ServicePriceInShopResponce.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Услуга */

open class ServicePriceInShopResponce: Codable {

    /** Стоимость услуги в магазине */
    public var price: Float?
    public var service: ServiceItem?
    /** Идентификатор */
    public var shopId: UUID?


    public init(price: Float?, service: ServiceItem?, shopId: UUID?) {
        self.price = price
        self.service = service
        self.shopId = shopId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(price, forKey: "price")
        try container.encodeIfPresent(service, forKey: "service")
        try container.encodeIfPresent(shopId, forKey: "shopId")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                price = try container.decodeIfPresent(Float.self, forKey: "price")
                service = try container.decodeIfPresent(ServiceItem.self, forKey: "service")
                shopId = try container.decodeIfPresent(UUID.self, forKey: "shopId")
    }
}

