//
// LoyaltyVkId.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Объект идентификатор группы или пользователя в социальной сети */

open class LoyaltyVkId: Codable {

    /** Идентификатор */
    public var id: String?


    public init(id: String?) {
        self.id = id
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(id, forKey: "id")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                id = try container.decodeIfPresent(String.self, forKey: "id")
    }
}

