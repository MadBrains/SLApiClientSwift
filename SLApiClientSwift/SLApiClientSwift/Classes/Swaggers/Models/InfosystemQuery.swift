//
// InfosystemQuery.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Объект запроса элементов инфосистемы */

open class InfosystemQuery: Codable {

    public enum Order: String, Codable { 
        case desc = "DESC"
        case asc = "ASC"
    }
    /** Количество выбираемых элементов */
    public var limit: Int64?
    /** Поиск элементов по полю name (name LIKE \&quot;request%\&quot;) */
    public var name: String?
    /** Смещение от начала выборки */
    public var offset: Int64?
    /** Порядок сортировки по полю, указанному в orderBy */
    public var order: Order?
    /** Ключ, определяющий поле сортировки. Доступны так же ключи (Key) дополнительных свойств элементов */
    public var orderBy: String?


    public init(limit: Int64?, name: String?, offset: Int64?, order: Order?, orderBy: String?) {
        self.limit = limit
        self.name = name
        self.offset = offset
        self.order = order
        self.orderBy = orderBy
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(limit, forKey: "limit")
        try container.encodeIfPresent(name, forKey: "name")
        try container.encodeIfPresent(offset, forKey: "offset")
        try container.encodeIfPresent(order, forKey: "order")
        try container.encodeIfPresent(orderBy, forKey: "orderBy")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                limit = try container.decodeIfPresent(Int64.self, forKey: "limit")
                name = try container.decodeIfPresent(String.self, forKey: "name")
                offset = try container.decodeIfPresent(Int64.self, forKey: "offset")
                order = try container.decodeIfPresent(Order.self, forKey: "order")
                orderBy = try container.decodeIfPresent(String.self, forKey: "orderBy")
    }
}
