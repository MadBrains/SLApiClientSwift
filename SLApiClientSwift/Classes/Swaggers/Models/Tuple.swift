//
// Tuple.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Кортеж пространства */

open class Tuple: Codable {

    /** Таймштамп создания (Unix) */
    public var createdAt: Int64?
    /** Уникальный ключ кортежа в пространстве ReadOnly */
    public var id: String?
    /** Таймштамп модификации (Unix)  */
    public var updatedAt: Int64?
    /** Документ в пространстве. Может быть использован для JSON-документа или любого другого текстового документа */
    public var value: Any


    public init(createdAt: Int64?, id: String?, updatedAt: Int64?, value: Any) {
        self.createdAt = createdAt
        self.id = id
        self.updatedAt = updatedAt
        self.value = value
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(createdAt, forKey: "created_at")
        try container.encodeIfPresent(id, forKey: "id")
        try container.encodeIfPresent(updatedAt, forKey: "updated_at")
        try container.encode(value, forKey: "value")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                createdAt = try container.decodeIfPresent(Int64.self, forKey: "created_at")
                id = try container.decodeIfPresent(String.self, forKey: "id")
                updatedAt = try container.decodeIfPresent(Int64.self, forKey: "updated_at")
                value = try container.decode(Any.self, forKey: "value")
    }
}
