//
// Infosystem.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Информационная система */

open class Infosystem: Codable {

    /** Идентификатор */
    public var id: UUID?
    /** Флаг означающий автоматически импортирована сущность или нет */
    public var _import: Bool?
    /** Информационная система */
    public var name: String


    public init(id: UUID?, _import: Bool?, name: String) {
        self.id = id
        self._import = _import
        self.name = name
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(id, forKey: "id")
        try container.encodeIfPresent(_import, forKey: "import")
        try container.encode(name, forKey: "name")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                id = try container.decodeIfPresent(UUID.self, forKey: "id")
                _import = try container.decodeIfPresent(Bool.self, forKey: "import")
                name = try container.decode(String.self, forKey: "name")
    }
}

