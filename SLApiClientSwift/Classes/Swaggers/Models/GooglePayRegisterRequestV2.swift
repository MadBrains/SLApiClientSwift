//
// GooglePayRegisterRequestV2.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class GooglePayRegisterRequestV2: Codable {

    /** Идентификатор мерчанта */
    public var merchant: String?
    /** Платежный токен, полученный из платежной системы, кодированный в Base64 */
    public var paymentToken: String?
    /**  */
    public var failUrl: String?
    /**  */
    public var returnUrl: String?


    public init(merchant: String?, paymentToken: String?, failUrl: String?, returnUrl: String?) {
        self.merchant = merchant
        self.paymentToken = paymentToken
        self.failUrl = failUrl
        self.returnUrl = returnUrl
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(merchant, forKey: "merchant")
        try container.encodeIfPresent(paymentToken, forKey: "paymentToken")
        try container.encodeIfPresent(failUrl, forKey: "failUrl")
        try container.encodeIfPresent(returnUrl, forKey: "returnUrl")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                merchant = try container.decodeIfPresent(String.self, forKey: "merchant")
                paymentToken = try container.decodeIfPresent(String.self, forKey: "paymentToken")
                failUrl = try container.decodeIfPresent(String.self, forKey: "failUrl")
                returnUrl = try container.decodeIfPresent(String.self, forKey: "returnUrl")
    }
}

