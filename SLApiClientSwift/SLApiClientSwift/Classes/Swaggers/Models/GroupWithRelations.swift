//
// GroupWithRelations.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Группа со свойствами */

open class GroupWithRelations: Codable {

    /** Id шаблона для товаров по умолчанию */
    public var defaultTemplateId: UUID?
    /** Идентификатор */
    public var id: UUID?
    /** При true сущность была автоматически импортирована с использованием сервиса интеграции */
    public var _import: Bool?
    /** Название группы */
    public var name: String
    /** Идентификатор родительской группы */
    public var parent: UUID?
    /** Условный вес элемента. Используется при сортировке — чем больше это значение, тем выше элемент в выборке */
    public var weight: Int?
    public var properties: [IPropertyValue]?


    public init(defaultTemplateId: UUID?, id: UUID?, _import: Bool?, name: String, parent: UUID?, weight: Int?, properties: [IPropertyValue]?) {
        self.defaultTemplateId = defaultTemplateId
        self.id = id
        self._import = _import
        self.name = name
        self.parent = parent
        self.weight = weight
        self.properties = properties
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(defaultTemplateId, forKey: "defaultTemplateId")
        try container.encodeIfPresent(id, forKey: "id")
        try container.encodeIfPresent(_import, forKey: "import")
        try container.encode(name, forKey: "name")
        try container.encodeIfPresent(parent, forKey: "parent")
        try container.encodeIfPresent(weight, forKey: "weight")
        try container.encodeIfPresent(properties, forKey: "properties")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                defaultTemplateId = try container.decodeIfPresent(UUID.self, forKey: "defaultTemplateId")
                id = try container.decodeIfPresent(UUID.self, forKey: "id")
                _import = try container.decodeIfPresent(Bool.self, forKey: "import")
                name = try container.decode(String.self, forKey: "name")
                parent = try container.decodeIfPresent(UUID.self, forKey: "parent")
                weight = try container.decodeIfPresent(Int.self, forKey: "weight")
                properties = try container.decodeIfPresent([IPropertyValue].self, forKey: "properties")
    }
}

