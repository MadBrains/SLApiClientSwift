//
// PaymentRegisterRequestV2.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Запрос оплаты корзины платежными системами Apple Pay и Samsung Pay */

open class PaymentRegisterRequestV2: Codable {

    /** Идентификатор мерчанта */
    public var merchant: String?
    /** Платежный токен, полученный из платежной системы, кодированный в Base64 */
    public var paymentToken: String?


    public init(merchant: String?, paymentToken: String?) {
        self.merchant = merchant
        self.paymentToken = paymentToken
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(merchant, forKey: "merchant")
        try container.encodeIfPresent(paymentToken, forKey: "paymentToken")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                merchant = try container.decodeIfPresent(String.self, forKey: "merchant")
                paymentToken = try container.decodeIfPresent(String.self, forKey: "paymentToken")
    }
}

