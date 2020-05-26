//
// SupportOperator.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Оператор */

open class SupportOperator: Codable {

    /** Идентификатор */
    public var id: UUID?
    /** Имя оператора */
    public var name: String?
    public var properties: [IPropertyValue]?
    /** Контакты оператора */
    public var communications: [OperatorCommunication]?


    public init(id: UUID?, name: String?, properties: [IPropertyValue]?, communications: [OperatorCommunication]?) {
        self.id = id
        self.name = name
        self.properties = properties
        self.communications = communications
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(id, forKey: "id")
        try container.encodeIfPresent(name, forKey: "name")
        try container.encodeIfPresent(properties, forKey: "properties")
        try container.encodeIfPresent(communications, forKey: "communications")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                id = try container.decodeIfPresent(UUID.self, forKey: "id")
                name = try container.decodeIfPresent(String.self, forKey: "name")
                properties = try container.decodeIfPresent([IPropertyValue].self, forKey: "properties")
                communications = try container.decodeIfPresent([OperatorCommunication].self, forKey: "communications")
    }
}

