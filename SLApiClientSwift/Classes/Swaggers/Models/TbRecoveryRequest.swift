//
// TbRecoveryRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class TbRecoveryRequest: Codable {

    public var email: String


    public init(email: String) {
        self.email = email
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(email, forKey: "email")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                email = try container.decode(String.self, forKey: "email")
    }
}

