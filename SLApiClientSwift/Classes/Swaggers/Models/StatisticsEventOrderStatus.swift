//
// StatisticsEventOrderStatus.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Событие изменения статуса заказа */

open class StatisticsEventOrderStatus: Codable {

    public enum NewValue: String, Codable { 
        case cart = "cart"
        case create = "create"
        case confirmed = "confirmed"
        case await = "await"
        case pay = "pay"
        case delivery = "delivery"
        case complete = "complete"
        case cancelled = "cancelled"
        case rejected = "rejected"
    }
    public enum OldValue: String, Codable { 
        case cart = "cart"
        case create = "create"
        case confirmed = "confirmed"
        case await = "await"
        case pay = "pay"
        case delivery = "delivery"
        case complete = "complete"
        case cancelled = "cancelled"
        case rejected = "rejected"
    }
    /** Идентификатор объекта заказа */
    public var id: String
    /** Новый статус заказа * cart - корзина, заказ еще формируется * create - создан * confirmed - подтвержден * await - ожидает подтвержения * pay - ожидает оплаты * delivery - доставка * complete - выполнен * cancelled - отменен * rejected - отклонен  */
    public var newValue: NewValue
    /** Предыдущий статус. Может быть пустым в случае создания заказа * cart - корзина, заказ еще формируется * create - создан * confirmed - подтвержден * await - ожидает подтвержения * pay - ожидает оплаты * delivery - доставка * complete - выполнен * cancelled - отменен * rejected - отклонен  */
    public var oldValue: OldValue?
    /** Идентификатор владельца заказа */
    public var uid: String


    public init(id: String, newValue: NewValue, oldValue: OldValue?, uid: String) {
        self.id = id
        self.newValue = newValue
        self.oldValue = oldValue
        self.uid = uid
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(id, forKey: "id")
        try container.encode(newValue, forKey: "newValue")
        try container.encodeIfPresent(oldValue, forKey: "oldValue")
        try container.encode(uid, forKey: "uid")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                id = try container.decode(String.self, forKey: "id")
                newValue = try container.decode(NewValue.self, forKey: "newValue")
                oldValue = try container.decodeIfPresent(OldValue.self, forKey: "oldValue")
                uid = try container.decode(String.self, forKey: "uid")
    }
}

