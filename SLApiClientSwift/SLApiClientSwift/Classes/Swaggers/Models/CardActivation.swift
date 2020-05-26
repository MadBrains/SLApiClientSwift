//
// CardActivation.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Запрос на активацию карты */

open class CardActivation: Codable {

    /** Номер карты */
    public var cardNumber: String
    /** Фамилия */
    public var name: String
    /** Номер телефона */
    public var phone: String


    public init(cardNumber: String, name: String, phone: String) {
        self.cardNumber = cardNumber
        self.name = name
        self.phone = phone
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(cardNumber, forKey: "cardNumber")
        try container.encode(name, forKey: "name")
        try container.encode(phone, forKey: "phone")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                cardNumber = try container.decode(String.self, forKey: "cardNumber")
                name = try container.decode(String.self, forKey: "name")
                phone = try container.decode(String.self, forKey: "phone")
    }
}
