//
// PaymentStatus.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Статус платежа */

open class PaymentStatus: Codable {

    public enum State: String, Codable { 
        case created = "CREATED"
        case approved = "APPROVED"
        case deposited = "DEPOSITED"
        case declined = "DECLINED"
        case reversed = "REVERSED"
        case refunded = "REFUNDED"
    }
    /** Сумма платежа в минимальных единицах валюты (копейки, центы и т. п.). */
    public var amount: Int64
    /** Дата регистрации заказа */
    public var date: String
    /** Состояние заказа */
    public var state: State


    public init(amount: Int64, date: String, state: State) {
        self.amount = amount
        self.date = date
        self.state = state
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(amount, forKey: "amount")
        try container.encode(date, forKey: "date")
        try container.encode(state, forKey: "state")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                amount = try container.decode(Int64.self, forKey: "amount")
                date = try container.decode(String.self, forKey: "date")
                state = try container.decode(State.self, forKey: "state")
    }
}

