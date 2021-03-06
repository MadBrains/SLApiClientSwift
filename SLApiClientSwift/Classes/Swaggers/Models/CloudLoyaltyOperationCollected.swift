//
// CloudLoyaltyOperationCollected.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** начисление за покупку (приход) */

open class CloudLoyaltyOperationCollected: Codable {

    /** дата продажи */
    public var executedAt: String
    /** идентификатор продажи */
    public var purchaseId: String
    /** сумма покупки */
    public var totalAmount: Double


    public init(executedAt: String, purchaseId: String, totalAmount: Double) {
        self.executedAt = executedAt
        self.purchaseId = purchaseId
        self.totalAmount = totalAmount
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(executedAt, forKey: "executedAt")
        try container.encode(purchaseId, forKey: "purchaseId")
        try container.encode(totalAmount, forKey: "totalAmount")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                executedAt = try container.decode(String.self, forKey: "executedAt")
                purchaseId = try container.decode(String.self, forKey: "purchaseId")
                totalAmount = try container.decode(Double.self, forKey: "totalAmount")
    }
}

