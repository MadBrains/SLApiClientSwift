//
// CatalogQuery.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Объект запроса элементов каталога */

open class CatalogQuery: Codable {

    public enum Order: String, Codable { 
        case desc = "DESC"
        case asc = "ASC"
    }
    /** Идентификатор родительской группы */
    public var groupId: String?
    /** Количество выбираемых элементов */
    public var limit: Int64?
    /** Смещение от начала выборки */
    public var offset: Int64?
    /** Порядок сортировки по полю указанному в orderBy */
    public var order: Order?
    /** Ключ, определяющий поле сортировки (только базовые свойства!) */
    public var orderBy: String?
    /** Запрос по дополнительным параметрам и основным. Полное описание находится в шапке документа */
    public var query: Any?
    /** Список магазинов с товаром в наличии */
    public var shopIdsIn: [String]?
    /** Хотя бы в одном из этих магазинов присутствует товар */
    public var shopIdsOr: [String]?


    public init(groupId: String?, limit: Int64?, offset: Int64?, order: Order?, orderBy: String?, query: Any?, shopIdsIn: [String]?, shopIdsOr: [String]?) {
        self.groupId = groupId
        self.limit = limit
        self.offset = offset
        self.order = order
        self.orderBy = orderBy
        self.query = query
        self.shopIdsIn = shopIdsIn
        self.shopIdsOr = shopIdsOr
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(groupId, forKey: "groupId")
        try container.encodeIfPresent(limit, forKey: "limit")
        try container.encodeIfPresent(offset, forKey: "offset")
        try container.encodeIfPresent(order, forKey: "order")
        try container.encodeIfPresent(orderBy, forKey: "orderBy")
        try container.encodeIfPresent(query, forKey: "query")
        try container.encodeIfPresent(shopIdsIn, forKey: "shopIdsIn")
        try container.encodeIfPresent(shopIdsOr, forKey: "shopIdsOr")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                groupId = try container.decodeIfPresent(String.self, forKey: "groupId")
                limit = try container.decodeIfPresent(Int64.self, forKey: "limit")
                offset = try container.decodeIfPresent(Int64.self, forKey: "offset")
                order = try container.decodeIfPresent(Order.self, forKey: "order")
                orderBy = try container.decodeIfPresent(String.self, forKey: "orderBy")
                query = try container.decodeIfPresent(Any.self, forKey: "query")
                shopIdsIn = try container.decodeIfPresent([String].self, forKey: "shopIdsIn")
                shopIdsOr = try container.decodeIfPresent([String].self, forKey: "shopIdsOr")
    }
}

