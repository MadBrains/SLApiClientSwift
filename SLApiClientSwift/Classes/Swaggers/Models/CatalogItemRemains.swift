//
// CatalogItemRemains.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class CatalogItemRemains: Codable {

    /** Цвет ярлыка товара в формате HEX RGB */
    public var badgeColor: String?
    /** Текст в ярлыке товара */
    public var badgeText: String?
    /** Остаток товара в магазине */
    public var count: Double?
    /** Cкидочная цена на товар */
    public var discountPrice: Double?
    /** Стоимость товара в магазине */
    public var price: Double?
    /** Идентификатор магазина */
    public var shopId: UUID?


    public init(badgeColor: String?, badgeText: String?, count: Double?, discountPrice: Double?, price: Double?, shopId: UUID?) {
        self.badgeColor = badgeColor
        self.badgeText = badgeText
        self.count = count
        self.discountPrice = discountPrice
        self.price = price
        self.shopId = shopId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(badgeColor, forKey: "badgeColor")
        try container.encodeIfPresent(badgeText, forKey: "badgeText")
        try container.encodeIfPresent(count, forKey: "count")
        try container.encodeIfPresent(discountPrice, forKey: "discountPrice")
        try container.encodeIfPresent(price, forKey: "price")
        try container.encodeIfPresent(shopId, forKey: "shopId")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                badgeColor = try container.decodeIfPresent(String.self, forKey: "badgeColor")
                badgeText = try container.decodeIfPresent(String.self, forKey: "badgeText")
                count = try container.decodeIfPresent(Double.self, forKey: "count")
                discountPrice = try container.decodeIfPresent(Double.self, forKey: "discountPrice")
                price = try container.decodeIfPresent(Double.self, forKey: "price")
                shopId = try container.decodeIfPresent(UUID.self, forKey: "shopId")
    }
}
