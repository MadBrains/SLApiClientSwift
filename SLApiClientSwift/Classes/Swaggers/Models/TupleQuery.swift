//
// TupleQuery.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Объект запроса пользовательских кортежей */

open class TupleQuery: Codable {

    public enum Order: String, Codable { 
        case desc = "DESC"
        case asc = "ASC"
    }
    public enum OrderBy: String, Codable { 
        case createdAt = "created_at"
        case updatedAt = "updated_at"
    }
    /** Количество выбираемых элементов */
    public var limit: Int64?
    /** Смещение от начала выборки */
    public var offset: Int64?
    /** Порядок сортировки по полю указанному в orderBy. Доступны значения DESK и ASC */
    public var order: Order?
    /** По какому полю должна происходить сортировка. Доступны поля created_at и updated_at */
    public var orderBy: OrderBy?


    public init(limit: Int64?, offset: Int64?, order: Order?, orderBy: OrderBy?) {
        self.limit = limit
        self.offset = offset
        self.order = order
        self.orderBy = orderBy
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(limit, forKey: "limit")
        try container.encodeIfPresent(offset, forKey: "offset")
        try container.encodeIfPresent(order, forKey: "order")
        try container.encodeIfPresent(orderBy, forKey: "orderBy")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                limit = try container.decodeIfPresent(Int64.self, forKey: "limit")
                offset = try container.decodeIfPresent(Int64.self, forKey: "offset")
                order = try container.decodeIfPresent(Order.self, forKey: "order")
                orderBy = try container.decodeIfPresent(OrderBy.self, forKey: "orderBy")
    }
}
