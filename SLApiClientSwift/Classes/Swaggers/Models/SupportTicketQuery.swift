//
// SupportTicketQuery.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Запрос поиска обращений */

open class SupportTicketQuery: Codable {

    public enum Order: String, Codable { 
        case desc = "DESC"
        case asc = "ASC"
    }
    public enum OrderBy: String, Codable { 
        case created = "created"
        case updated = "updated"
    }
    /** Количество выбираемых элементов */
    public var limit: Int64?
    /** Смещение от начала выборки */
    public var offset: Int64?
    /** Идентификатор оператора. Игнорируется при запроса /ticket/{userId}/ */
    public var operatorId: UUID?
    /** Порядок сортировки по полю указанному в orderBy */
    public var order: Order?
    /** По какому полю должна происходить сортировка. */
    public var orderBy: OrderBy?
    /** Название причины на латиннице (^[0-9a-zA-Z-_]+$) */
    public var reason: String?
    /** Массив выбираемых статусов (OR) */
    public var statuses: [String]?
    /** Идентификатор пользователя. Игнорируется при запроса /ticket/{userId}/ */
    public var userId: UUID?


    public init(limit: Int64?, offset: Int64?, operatorId: UUID?, order: Order?, orderBy: OrderBy?, reason: String?, statuses: [String]?, userId: UUID?) {
        self.limit = limit
        self.offset = offset
        self.operatorId = operatorId
        self.order = order
        self.orderBy = orderBy
        self.reason = reason
        self.statuses = statuses
        self.userId = userId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(limit, forKey: "limit")
        try container.encodeIfPresent(offset, forKey: "offset")
        try container.encodeIfPresent(operatorId, forKey: "operatorId")
        try container.encodeIfPresent(order, forKey: "order")
        try container.encodeIfPresent(orderBy, forKey: "orderBy")
        try container.encodeIfPresent(reason, forKey: "reason")
        try container.encodeIfPresent(statuses, forKey: "statuses")
        try container.encodeIfPresent(userId, forKey: "userId")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                limit = try container.decodeIfPresent(Int64.self, forKey: "limit")
                offset = try container.decodeIfPresent(Int64.self, forKey: "offset")
                operatorId = try container.decodeIfPresent(UUID.self, forKey: "operatorId")
                order = try container.decodeIfPresent(Order.self, forKey: "order")
                orderBy = try container.decodeIfPresent(OrderBy.self, forKey: "orderBy")
                reason = try container.decodeIfPresent(String.self, forKey: "reason")
                statuses = try container.decodeIfPresent([String].self, forKey: "statuses")
                userId = try container.decodeIfPresent(UUID.self, forKey: "userId")
    }
}

