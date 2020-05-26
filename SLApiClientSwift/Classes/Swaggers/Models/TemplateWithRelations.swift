//
// TemplateWithRelations.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Запрос шаблона */

open class TemplateWithRelations: Codable {

    /** Идентификатор */
    public var id: UUID?
    /** Флаг, означающий автоматически импортирована сущность или нет */
    public var _import: Bool?
    /** Название */
    public var name: String?
    public var properties: [IProperty]?


    public init(id: UUID?, _import: Bool?, name: String?, properties: [IProperty]?) {
        self.id = id
        self._import = _import
        self.name = name
        self.properties = properties
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(id, forKey: "id")
        try container.encodeIfPresent(_import, forKey: "import")
        try container.encodeIfPresent(name, forKey: "name")
        try container.encodeIfPresent(properties, forKey: "properties")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                id = try container.decodeIfPresent(UUID.self, forKey: "id")
                _import = try container.decodeIfPresent(Bool.self, forKey: "import")
                name = try container.decodeIfPresent(String.self, forKey: "name")
                properties = try container.decodeIfPresent([IProperty].self, forKey: "properties")
    }
}
