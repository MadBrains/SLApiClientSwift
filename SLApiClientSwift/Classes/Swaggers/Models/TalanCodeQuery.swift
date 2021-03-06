//
// TalanCodeQuery.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Объект запроса кода авторизации. Телефон содержит только цифры, другие символы недопустимы */

open class TalanCodeQuery: Codable {

    public var appType: String
    /** Only numbers */
    public var phone: String


    public init(appType: String, phone: String) {
        self.appType = appType
        self.phone = phone
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(appType, forKey: "appType")
        try container.encode(phone, forKey: "phone")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                appType = try container.decode(String.self, forKey: "appType")
                phone = try container.decode(String.self, forKey: "phone")
    }
}

