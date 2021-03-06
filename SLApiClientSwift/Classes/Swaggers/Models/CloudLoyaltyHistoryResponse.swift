//
// CloudLoyaltyHistoryResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class CloudLoyaltyHistoryResponse: Codable {

    public var history: [CloudLoyaltyHistory]
    public var pagination: CloudLoyaltyPagination


    public init(history: [CloudLoyaltyHistory], pagination: CloudLoyaltyPagination) {
        self.history = history
        self.pagination = pagination
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(history, forKey: "history")
        try container.encode(pagination, forKey: "pagination")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                history = try container.decode([CloudLoyaltyHistory].self, forKey: "history")
                pagination = try container.decode(CloudLoyaltyPagination.self, forKey: "pagination")
    }
}

