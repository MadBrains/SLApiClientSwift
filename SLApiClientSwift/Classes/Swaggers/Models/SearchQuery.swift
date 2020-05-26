//
// SearchQuery.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Расширенный объект поискового запроса с поддержкой сортировки и пагинации */

open class SearchQuery: Codable {

    public enum Order: String, Codable { 
        case desc = "DESC"
        case asc = "ASC"
    }
    public var filter: SearchFilter?
    /** Количество выбираемых элементов */
    public var limit: Int64?
    /** Смещение от начала выборки */
    public var offset: Int64?
    /** Порядок сортировки по полю указанному в orderBy #описание порядка сортировки    * ASC - сортировка по возрастанию (прямой порядок)   * DESC - сортировка по убыванию (обратный порядок)  */
    public var order: Order?
    /** Ключ, определяющий поле сортировки. Если значение price и передан дополнительно shopId, то выборка и сортировка происходит по цене в конкретном магазине */
    public var orderBy: String?
    public var orderFilter: SearchFilter?
    /** Поисковая строка */
    public var query: String?
    /** Идентификатор магазина для сортировки по цене в данном магазине */
    public var orderShopId: String?


    public init(filter: SearchFilter?, limit: Int64?, offset: Int64?, order: Order?, orderBy: String?, orderFilter: SearchFilter?, query: String?, orderShopId: String?) {
        self.filter = filter
        self.limit = limit
        self.offset = offset
        self.order = order
        self.orderBy = orderBy
        self.orderFilter = orderFilter
        self.query = query
        self.orderShopId = orderShopId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(filter, forKey: "filter")
        try container.encodeIfPresent(limit, forKey: "limit")
        try container.encodeIfPresent(offset, forKey: "offset")
        try container.encodeIfPresent(order, forKey: "order")
        try container.encodeIfPresent(orderBy, forKey: "orderBy")
        try container.encodeIfPresent(orderFilter, forKey: "orderFilter")
        try container.encodeIfPresent(query, forKey: "query")
        try container.encodeIfPresent(orderShopId, forKey: "orderShopId")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                filter = try container.decodeIfPresent(SearchFilter.self, forKey: "filter")
                limit = try container.decodeIfPresent(Int64.self, forKey: "limit")
                offset = try container.decodeIfPresent(Int64.self, forKey: "offset")
                order = try container.decodeIfPresent(Order.self, forKey: "order")
                orderBy = try container.decodeIfPresent(String.self, forKey: "orderBy")
                orderFilter = try container.decodeIfPresent(SearchFilter.self, forKey: "orderFilter")
                query = try container.decodeIfPresent(String.self, forKey: "query")
                orderShopId = try container.decodeIfPresent(String.self, forKey: "orderShopId")
    }
}
