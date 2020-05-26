//
// GooglePayRegisterRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Запрос регистрации платежа Google Pay */

open class GooglePayRegisterRequest: Codable {

    public var failUrl: String?
    public var merchant: String
    public var orderId: UUID
    public var paymentToken: String
    public var returnUrl: String


    public init(failUrl: String?, merchant: String, orderId: UUID, paymentToken: String, returnUrl: String) {
        self.failUrl = failUrl
        self.merchant = merchant
        self.orderId = orderId
        self.paymentToken = paymentToken
        self.returnUrl = returnUrl
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(failUrl, forKey: "failUrl")
        try container.encode(merchant, forKey: "merchant")
        try container.encode(orderId, forKey: "orderId")
        try container.encode(paymentToken, forKey: "paymentToken")
        try container.encode(returnUrl, forKey: "returnUrl")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                failUrl = try container.decodeIfPresent(String.self, forKey: "failUrl")
                merchant = try container.decode(String.self, forKey: "merchant")
                orderId = try container.decode(UUID.self, forKey: "orderId")
                paymentToken = try container.decode(String.self, forKey: "paymentToken")
                returnUrl = try container.decode(String.self, forKey: "returnUrl")
    }
}
