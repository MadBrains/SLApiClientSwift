//
// InfoItemsResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Ответ поискового запроса элементов инфосистем (с агрегациями) */

open class InfoItemsResponse: Codable {

    /** Результаты ф-ций агрегации */
    public var aggregations: Any?
    public var results: [InfoItemWithRelations]?
    /** Общее количество элементов, удовлетворяющих запросу */
    public var total: Int?


    public init(aggregations: Any?, results: [InfoItemWithRelations]?, total: Int?) {
        self.aggregations = aggregations
        self.results = results
        self.total = total
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(aggregations, forKey: "aggregations")
        try container.encodeIfPresent(results, forKey: "results")
        try container.encodeIfPresent(total, forKey: "total")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                aggregations = try container.decodeIfPresent(Any.self, forKey: "aggregations")
                results = try container.decodeIfPresent([InfoItemWithRelations].self, forKey: "results")
                total = try container.decodeIfPresent(Int.self, forKey: "total")
    }
}

