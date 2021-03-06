//
// ServiceItem.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Услуга */

open class ServiceItem: Codable {

    /** Полный текст */
    public var body: String?
    /** Таймштамп создания (Unix) */
    public var createdAt: Int64?
    /** Короткое описание */
    public var description: String?
    /** Массив изображений товара */
    public var detailImages: [String]?
    /** Идентификаторы родительских групп */
    public var groups: [String]?
    /** Идентификатор услуги */
    public var id: UUID?
    /** URL изображения превью */
    public var image: String?
    /** Флаг означающий автоматически импортирована сущьность или нет */
    public var _import: Bool?
    /** Название */
    public var name: String?
    public var properties: [IPropertyValue]?
    /** Идентификатор услуги внешний системы */
    public var remoteId: String?
    /** Количество временных слотов занимаемых услугой */
    public var timeSlots: Double?
    /** Таймштамп модификации (Unix) */
    public var updatedAt: Int64?


    public init(body: String?, createdAt: Int64?, description: String?, detailImages: [String]?, groups: [String]?, id: UUID?, image: String?, _import: Bool?, name: String?, properties: [IPropertyValue]?, remoteId: String?, timeSlots: Double?, updatedAt: Int64?) {
        self.body = body
        self.createdAt = createdAt
        self.description = description
        self.detailImages = detailImages
        self.groups = groups
        self.id = id
        self.image = image
        self._import = _import
        self.name = name
        self.properties = properties
        self.remoteId = remoteId
        self.timeSlots = timeSlots
        self.updatedAt = updatedAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(body, forKey: "body")
        try container.encodeIfPresent(createdAt, forKey: "createdAt")
        try container.encodeIfPresent(description, forKey: "description")
        try container.encodeIfPresent(detailImages, forKey: "detailImages")
        try container.encodeIfPresent(groups, forKey: "groups")
        try container.encodeIfPresent(id, forKey: "id")
        try container.encodeIfPresent(image, forKey: "image")
        try container.encodeIfPresent(_import, forKey: "import")
        try container.encodeIfPresent(name, forKey: "name")
        try container.encodeIfPresent(properties, forKey: "properties")
        try container.encodeIfPresent(remoteId, forKey: "remoteId")
        try container.encodeIfPresent(timeSlots, forKey: "timeSlots")
        try container.encodeIfPresent(updatedAt, forKey: "updatedAt")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                body = try container.decodeIfPresent(String.self, forKey: "body")
                createdAt = try container.decodeIfPresent(Int64.self, forKey: "createdAt")
                description = try container.decodeIfPresent(String.self, forKey: "description")
                detailImages = try container.decodeIfPresent([String].self, forKey: "detailImages")
                groups = try container.decodeIfPresent([String].self, forKey: "groups")
                id = try container.decodeIfPresent(UUID.self, forKey: "id")
                image = try container.decodeIfPresent(String.self, forKey: "image")
                _import = try container.decodeIfPresent(Bool.self, forKey: "import")
                name = try container.decodeIfPresent(String.self, forKey: "name")
                properties = try container.decodeIfPresent([IPropertyValue].self, forKey: "properties")
                remoteId = try container.decodeIfPresent(String.self, forKey: "remoteId")
                timeSlots = try container.decodeIfPresent(Double.self, forKey: "timeSlots")
                updatedAt = try container.decodeIfPresent(Int64.self, forKey: "updatedAt")
    }
}

