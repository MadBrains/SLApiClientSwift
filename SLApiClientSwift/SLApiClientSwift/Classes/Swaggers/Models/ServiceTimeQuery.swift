//
// ServiceTimeQuery.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Объект запроса поиска временных слотов. Идентификаторы shops выбираются через объединение (or), аналогично resources. При этом shops и resources вместе выбирается через пересечение (and). Если resources или shops не переданы, то на не переданное подмножестно не накладывается ограничение. */

open class ServiceTimeQuery: Codable {

    /** Список дат для выборки по RFC 3339, section 5.6, for example, 2017-07-21 */
    public var dates: [String]?
    /** Массив идентификаторов ресурсов */
    public var resources: [String]?
    /** Массив идентификаторов точек продаж */
    public var shops: [String]?


    public init(dates: [String]?, resources: [String]?, shops: [String]?) {
        self.dates = dates
        self.resources = resources
        self.shops = shops
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(dates, forKey: "dates")
        try container.encodeIfPresent(resources, forKey: "resources")
        try container.encodeIfPresent(shops, forKey: "shops")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                dates = try container.decodeIfPresent([String].self, forKey: "dates")
                resources = try container.decodeIfPresent([String].self, forKey: "resources")
                shops = try container.decodeIfPresent([String].self, forKey: "shops")
    }
}
