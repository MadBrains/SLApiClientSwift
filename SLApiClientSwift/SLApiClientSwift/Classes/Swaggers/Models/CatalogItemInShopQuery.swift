//
// CatalogItemInShopQuery.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Объект запроса остатков товара */

open class CatalogItemInShopQuery: Codable {

    /** Массив идентификаторов магазинов */
    public var shopIds: [UUID]?


    public init(shopIds: [UUID]?) {
        self.shopIds = shopIds
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(shopIds, forKey: "shopIds")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                shopIds = try container.decodeIfPresent([UUID].self, forKey: "shopIds")
    }
}

