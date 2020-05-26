//
// OrdersV2QueryDslResult.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Результат поиска */

open class OrdersV2QueryDslResult: Codable {

    /** Результаты агрегаций */
    public var aggregations: Any?
    /** Количество наденных заказов */
    public var count: Int?
    /** Найденные заказы */
    public var results: [OrderV2Short]?


    public init(aggregations: Any?, count: Int?, results: [OrderV2Short]?) {
        self.aggregations = aggregations
        self.count = count
        self.results = results
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(aggregations, forKey: "aggregations")
        try container.encodeIfPresent(count, forKey: "count")
        try container.encodeIfPresent(results, forKey: "results")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                aggregations = try container.decodeIfPresent(Any.self, forKey: "aggregations")
                count = try container.decodeIfPresent(Int.self, forKey: "count")
                results = try container.decodeIfPresent([OrderV2Short].self, forKey: "results")
    }
}

