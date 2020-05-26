//
// DcAggregationResp.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Ответ с найденными привязанными картами */

open class DcAggregationResp: Codable {

    /** Количество карт в ответе */
    public var count: Int64?
    /** Список найденных привязанных карт */
    public var items: [DcAggregationCardWithBinds]?


    public init(count: Int64?, items: [DcAggregationCardWithBinds]?) {
        self.count = count
        self.items = items
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(count, forKey: "count")
        try container.encodeIfPresent(items, forKey: "items")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                count = try container.decodeIfPresent(Int64.self, forKey: "count")
                items = try container.decodeIfPresent([DcAggregationCardWithBinds].self, forKey: "items")
    }
}

