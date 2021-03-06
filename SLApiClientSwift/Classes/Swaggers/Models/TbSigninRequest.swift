//
// TbSigninRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class TbSigninRequest: Codable {

    /** Email (email regular) */
    public var email: String
    /** Password */
    public var password: String


    public init(email: String, password: String) {
        self.email = email
        self.password = password
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(email, forKey: "email")
        try container.encode(password, forKey: "password")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                email = try container.decode(String.self, forKey: "email")
                password = try container.decode(String.self, forKey: "password")
    }
}

