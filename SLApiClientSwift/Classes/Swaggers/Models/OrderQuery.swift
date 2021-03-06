//
// OrderQuery.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Объект запроса заказов */

open class OrderQuery: Codable {

    public enum Order: String, Codable { 
        case desc = "DESC"
        case asc = "ASC"
    }
    public var ids: [String]?
    /** Количество выбираемых элементов (необязательный) */
    public var limit: Int64?
    /** Смещение от начала выборки (необязательный) */
    public var offset: Int64?
    /** Порядок сортировки по полю указанному в orderBy (необязательный)   * ASC - сортировка по возрастанию (прямой порядок)   * DESC - сортировка по убыванию (обратный порядок)  */
    public var order: Order?
    /** По какому полю должна происходить сортировка (необязательный) */
    public var orderBy: String?
    /** Фильтрация по статусу (необязательный) */
    public var status: String?
    /** Фильтрация по идентификатору пользователя (UUID) (необязательный) */
    public var userId: String?


    public init(ids: [String]?, limit: Int64?, offset: Int64?, order: Order?, orderBy: String?, status: String?, userId: String?) {
        self.ids = ids
        self.limit = limit
        self.offset = offset
        self.order = order
        self.orderBy = orderBy
        self.status = status
        self.userId = userId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(ids, forKey: "ids")
        try container.encodeIfPresent(limit, forKey: "limit")
        try container.encodeIfPresent(offset, forKey: "offset")
        try container.encodeIfPresent(order, forKey: "order")
        try container.encodeIfPresent(orderBy, forKey: "orderBy")
        try container.encodeIfPresent(status, forKey: "status")
        try container.encodeIfPresent(userId, forKey: "userId")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                ids = try container.decodeIfPresent([String].self, forKey: "ids")
                limit = try container.decodeIfPresent(Int64.self, forKey: "limit")
                offset = try container.decodeIfPresent(Int64.self, forKey: "offset")
                order = try container.decodeIfPresent(Order.self, forKey: "order")
                orderBy = try container.decodeIfPresent(String.self, forKey: "orderBy")
                status = try container.decodeIfPresent(String.self, forKey: "status")
                userId = try container.decodeIfPresent(String.self, forKey: "userId")
    }
}

