//
// OrderServiceItem.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Отдельная услуга в заказе */

open class OrderServiceItem: Codable {

    /** Короткое описание */
    public var description: String?
    /** Идентификатор позиции в заказе (UUID) (можно не указывать) */
    public var id: UUID?
    /** URL изображения превью */
    public var image: String?
    /** Название */
    public var name: String?
    /** Стоимость услуги в магазине */
    public var price: Double?
    /** Идентификатор услуги во внешней системе (кассовый сервер, 1С и т.д.) */
    public var remoteId: String?
    /** Идентификатор услуги в каталоге (UUID) */
    public var serviceId: UUID?


    public init(description: String?, id: UUID?, image: String?, name: String?, price: Double?, remoteId: String?, serviceId: UUID?) {
        self.description = description
        self.id = id
        self.image = image
        self.name = name
        self.price = price
        self.remoteId = remoteId
        self.serviceId = serviceId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(description, forKey: "description")
        try container.encodeIfPresent(id, forKey: "id")
        try container.encodeIfPresent(image, forKey: "image")
        try container.encodeIfPresent(name, forKey: "name")
        try container.encodeIfPresent(price, forKey: "price")
        try container.encodeIfPresent(remoteId, forKey: "remoteId")
        try container.encodeIfPresent(serviceId, forKey: "serviceId")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                description = try container.decodeIfPresent(String.self, forKey: "description")
                id = try container.decodeIfPresent(UUID.self, forKey: "id")
                image = try container.decodeIfPresent(String.self, forKey: "image")
                name = try container.decodeIfPresent(String.self, forKey: "name")
                price = try container.decodeIfPresent(Double.self, forKey: "price")
                remoteId = try container.decodeIfPresent(String.self, forKey: "remoteId")
                serviceId = try container.decodeIfPresent(UUID.self, forKey: "serviceId")
    }
}

