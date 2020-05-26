//
// OrdersV2Status.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class OrdersV2Status: Codable {

    /** Ключ статуса */
    public var key: String?
    /** Человекочитаемое название статуса */
    public var name: String?
    /** Флаг, которым отмечаются статусы, которые может устанавливать пользователь */
    public var canUserSet: Bool?
    /** Флаг, которым отмечается статус, который ставится заказам, которые оплачен */
    public var isPayed: Bool?
    /** Флаг, которым отмечается статус, который ставится заказам, которые ождают оплаты */
    public var isWaitingPayment: Bool?
    /** Список ключе статусов, на которые можно перейти из текущего */
    public var next: [String]?


    public init(key: String?, name: String?, canUserSet: Bool?, isPayed: Bool?, isWaitingPayment: Bool?, next: [String]?) {
        self.key = key
        self.name = name
        self.canUserSet = canUserSet
        self.isPayed = isPayed
        self.isWaitingPayment = isWaitingPayment
        self.next = next
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(key, forKey: "key")
        try container.encodeIfPresent(name, forKey: "name")
        try container.encodeIfPresent(canUserSet, forKey: "canUserSet")
        try container.encodeIfPresent(isPayed, forKey: "isPayed")
        try container.encodeIfPresent(isWaitingPayment, forKey: "isWaitingPayment")
        try container.encodeIfPresent(next, forKey: "next")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                key = try container.decodeIfPresent(String.self, forKey: "key")
                name = try container.decodeIfPresent(String.self, forKey: "name")
                canUserSet = try container.decodeIfPresent(Bool.self, forKey: "canUserSet")
                isPayed = try container.decodeIfPresent(Bool.self, forKey: "isPayed")
                isWaitingPayment = try container.decodeIfPresent(Bool.self, forKey: "isWaitingPayment")
                next = try container.decodeIfPresent([String].self, forKey: "next")
    }
}

