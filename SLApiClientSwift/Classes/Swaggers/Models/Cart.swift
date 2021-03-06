//
// Cart.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Корзина заказа */

open class Cart: Codable {

    public enum OrderingStatus: String, Codable { 
        case _none = "none"
        case preparing = "preparing"
        case readyForOrder = "ready_for_order"
    }
    /** Уже примененные стадии заказа */
    public var appliedStages: [Stage]?
    /** Время, до которого можно совершить заказ */
    public var canOrderTill: Date?
    /** Идентификатор корзины */
    public var cartId: UUID?
    /** Дата создания */
    public var creationTime: Date?
    /** Объект с кастомными полями. Объект, где ключи и значения должны быть строками. */
    public var customersData: Any?
    public var delivery: Delivery?
    /** Флаг, который значит что все кастомные поля заполнены валидными данными */
    public var isCustomersDataValid: Bool?
    public var items: CartItems?
    public var loyalty: Loyalty?
    /** Стадии, необходимые для совершения заказа */
    public var necessaryStages: [Stage]?
    /** Статус корзины */
    public var orderingStatus: OrderingStatus?
    public var price: Price?
    /** Идентификатор пользователя */
    public var uid: UUID?
    /** Дата обновления */
    public var updateTime: Date?
    /** Версия корзины */
    public var version: Int?


    public init(appliedStages: [Stage]?, canOrderTill: Date?, cartId: UUID?, creationTime: Date?, customersData: Any?, delivery: Delivery?, isCustomersDataValid: Bool?, items: CartItems?, loyalty: Loyalty?, necessaryStages: [Stage]?, orderingStatus: OrderingStatus?, price: Price?, uid: UUID?, updateTime: Date?, version: Int?) {
        self.appliedStages = appliedStages
        self.canOrderTill = canOrderTill
        self.cartId = cartId
        self.creationTime = creationTime
        self.customersData = customersData
        self.delivery = delivery
        self.isCustomersDataValid = isCustomersDataValid
        self.items = items
        self.loyalty = loyalty
        self.necessaryStages = necessaryStages
        self.orderingStatus = orderingStatus
        self.price = price
        self.uid = uid
        self.updateTime = updateTime
        self.version = version
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(appliedStages, forKey: "appliedStages")
        try container.encodeIfPresent(canOrderTill, forKey: "canOrderTill")
        try container.encodeIfPresent(cartId, forKey: "cartId")
        try container.encodeIfPresent(creationTime, forKey: "creationTime")
        try container.encodeIfPresent(customersData, forKey: "customersData")
        try container.encodeIfPresent(delivery, forKey: "delivery")
        try container.encodeIfPresent(isCustomersDataValid, forKey: "isCustomersDataValid")
        try container.encodeIfPresent(items, forKey: "items")
        try container.encodeIfPresent(loyalty, forKey: "loyalty")
        try container.encodeIfPresent(necessaryStages, forKey: "necessaryStages")
        try container.encodeIfPresent(orderingStatus, forKey: "orderingStatus")
        try container.encodeIfPresent(price, forKey: "price")
        try container.encodeIfPresent(uid, forKey: "uid")
        try container.encodeIfPresent(updateTime, forKey: "updateTime")
        try container.encodeIfPresent(version, forKey: "version")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                appliedStages = try container.decodeIfPresent([Stage].self, forKey: "appliedStages")
                canOrderTill = try container.decodeIfPresent(Date.self, forKey: "canOrderTill")
                cartId = try container.decodeIfPresent(UUID.self, forKey: "cartId")
                creationTime = try container.decodeIfPresent(Date.self, forKey: "creationTime")
                customersData = try container.decodeIfPresent(Any.self, forKey: "customersData")
                delivery = try container.decodeIfPresent(Delivery.self, forKey: "delivery")
                isCustomersDataValid = try container.decodeIfPresent(Bool.self, forKey: "isCustomersDataValid")
                items = try container.decodeIfPresent(CartItems.self, forKey: "items")
                loyalty = try container.decodeIfPresent(Loyalty.self, forKey: "loyalty")
                necessaryStages = try container.decodeIfPresent([Stage].self, forKey: "necessaryStages")
                orderingStatus = try container.decodeIfPresent(OrderingStatus.self, forKey: "orderingStatus")
                price = try container.decodeIfPresent(Price.self, forKey: "price")
                uid = try container.decodeIfPresent(UUID.self, forKey: "uid")
                updateTime = try container.decodeIfPresent(Date.self, forKey: "updateTime")
                version = try container.decodeIfPresent(Int.self, forKey: "version")
    }
}

