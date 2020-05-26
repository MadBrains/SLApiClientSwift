//
// ApplePayRegisterRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Запрос регистрации платежа Apple Pay */

open class ApplePayRegisterRequest: Codable {

    public var merchant: String
    public var orderId: UUID
    public var paymentToken: String


    public init(merchant: String, orderId: UUID, paymentToken: String) {
        self.merchant = merchant
        self.orderId = orderId
        self.paymentToken = paymentToken
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(merchant, forKey: "merchant")
        try container.encode(orderId, forKey: "orderId")
        try container.encode(paymentToken, forKey: "paymentToken")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                merchant = try container.decode(String.self, forKey: "merchant")
                orderId = try container.decode(UUID.self, forKey: "orderId")
                paymentToken = try container.decode(String.self, forKey: "paymentToken")
    }
}
