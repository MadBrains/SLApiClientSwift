//
// OrderItem.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Товар в заказе */

open class OrderItem: Codable {

    public enum Measure: String, Codable { 
        case u = "u"
        case kg = "kg"
        case gm = "gm"
        case lit = "lit"
        case mlit = "mlit"
        case sec = "sec"
        case day = "day"
        case hour = "hour"
    }
    /** Идентификатор товара в каталоге (UUID) */
    public var catalogItemId: String?
    /** Короткое описание */
    public var description: String?
    /** Идентификатор позиции в заказе (UUID) (не указывать) */
    public var id: String?
    /** URL изображения превью */
    public var image: String?
    /** Единица измерения */
    public var measure: Measure?
    /** Название */
    public var name: String?
    /** Оригинальная стоимость позиции без скидок (не указывать, берется из каталога) */
    public var oldPrice: Double?
    /** Стоимость позиции со скидкой */
    public var price: Double?
    /** Количество */
    public var quantity: Double?
    /** Идентификатор товара во внешней системе (кассовый сервер, 1С и т.д.) */
    public var remoteId: String?
    /** Идентификатор магазина (UUID) */
    public var shopId: UUID?
    /** Минимальная единица */
    public var unit: Double?


    public init(catalogItemId: String?, description: String?, id: String?, image: String?, measure: Measure?, name: String?, oldPrice: Double?, price: Double?, quantity: Double?, remoteId: String?, shopId: UUID?, unit: Double?) {
        self.catalogItemId = catalogItemId
        self.description = description
        self.id = id
        self.image = image
        self.measure = measure
        self.name = name
        self.oldPrice = oldPrice
        self.price = price
        self.quantity = quantity
        self.remoteId = remoteId
        self.shopId = shopId
        self.unit = unit
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(catalogItemId, forKey: "catalogItemId")
        try container.encodeIfPresent(description, forKey: "description")
        try container.encodeIfPresent(id, forKey: "id")
        try container.encodeIfPresent(image, forKey: "image")
        try container.encodeIfPresent(measure, forKey: "measure")
        try container.encodeIfPresent(name, forKey: "name")
        try container.encodeIfPresent(oldPrice, forKey: "oldPrice")
        try container.encodeIfPresent(price, forKey: "price")
        try container.encodeIfPresent(quantity, forKey: "quantity")
        try container.encodeIfPresent(remoteId, forKey: "remoteId")
        try container.encodeIfPresent(shopId, forKey: "shopId")
        try container.encodeIfPresent(unit, forKey: "unit")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                catalogItemId = try container.decodeIfPresent(String.self, forKey: "catalogItemId")
                description = try container.decodeIfPresent(String.self, forKey: "description")
                id = try container.decodeIfPresent(String.self, forKey: "id")
                image = try container.decodeIfPresent(String.self, forKey: "image")
                measure = try container.decodeIfPresent(Measure.self, forKey: "measure")
                name = try container.decodeIfPresent(String.self, forKey: "name")
                oldPrice = try container.decodeIfPresent(Double.self, forKey: "oldPrice")
                price = try container.decodeIfPresent(Double.self, forKey: "price")
                quantity = try container.decodeIfPresent(Double.self, forKey: "quantity")
                remoteId = try container.decodeIfPresent(String.self, forKey: "remoteId")
                shopId = try container.decodeIfPresent(UUID.self, forKey: "shopId")
                unit = try container.decodeIfPresent(Double.self, forKey: "unit")
    }
}

