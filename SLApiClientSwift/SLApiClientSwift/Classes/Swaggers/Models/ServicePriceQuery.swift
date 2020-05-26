//
// ServicePriceQuery.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Объект запроса поиска стоимости услуг. Идентификаторы shops выбираются через объединение (or), аналогично services. При этом shops и services вместе выбирается через пересечение (and). Если service или shops не переданы, то на не переданное подмножестно не накладывается ограничение. */

open class ServicePriceQuery: Codable {

    /** Количество выбираемых элементов */
    public var limit: Int64?
    /** Смещение от начала выборки */
    public var offset: Int64?
    /** Массив идентификаторов услуг */
    public var services: [String]?
    /** Массив идентификаторов точек продаж */
    public var shops: [String]?


    public init(limit: Int64?, offset: Int64?, services: [String]?, shops: [String]?) {
        self.limit = limit
        self.offset = offset
        self.services = services
        self.shops = shops
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(limit, forKey: "limit")
        try container.encodeIfPresent(offset, forKey: "offset")
        try container.encodeIfPresent(services, forKey: "services")
        try container.encodeIfPresent(shops, forKey: "shops")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                limit = try container.decodeIfPresent(Int64.self, forKey: "limit")
                offset = try container.decodeIfPresent(Int64.self, forKey: "offset")
                services = try container.decodeIfPresent([String].self, forKey: "services")
                shops = try container.decodeIfPresent([String].self, forKey: "shops")
    }
}

