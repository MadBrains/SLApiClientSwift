//
// OrderV2List.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Список заказов */

open class OrderV2List: Codable {

    public var orders: [OrderV2Short]?
    public var pagination: OrderV2ListPagination?


    public init(orders: [OrderV2Short]?, pagination: OrderV2ListPagination?) {
        self.orders = orders
        self.pagination = pagination
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(orders, forKey: "orders")
        try container.encodeIfPresent(pagination, forKey: "pagination")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                orders = try container.decodeIfPresent([OrderV2Short].self, forKey: "orders")
                pagination = try container.decodeIfPresent(OrderV2ListPagination.self, forKey: "pagination")
    }
}

