//
// InlineResponse2002.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Объект с данными привязанной карты */

open class InlineResponse2002: Codable {

    /** Идентификатор привязки */
    public var bindingId: UUID?
    /** Дата истечения карты в формате MM/YY */
    public var expiryDate: String?
    /** Частично скрытый номер карты */
    public var maskedPan: String?


    public init(bindingId: UUID?, expiryDate: String?, maskedPan: String?) {
        self.bindingId = bindingId
        self.expiryDate = expiryDate
        self.maskedPan = maskedPan
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(bindingId, forKey: "bindingId")
        try container.encodeIfPresent(expiryDate, forKey: "expiryDate")
        try container.encodeIfPresent(maskedPan, forKey: "maskedPan")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                bindingId = try container.decodeIfPresent(UUID.self, forKey: "bindingId")
                expiryDate = try container.decodeIfPresent(String.self, forKey: "expiryDate")
                maskedPan = try container.decodeIfPresent(String.self, forKey: "maskedPan")
    }
}

