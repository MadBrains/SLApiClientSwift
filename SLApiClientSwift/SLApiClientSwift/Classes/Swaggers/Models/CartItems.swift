//
// CartItems.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Состав корзины */

open class CartItems: Codable {

    /** Подарки */
    public var gifts: [CartItem]?
    /** Товары в корзине */
    public var goods: [CartItemWithExtra]?


    public init(gifts: [CartItem]?, goods: [CartItemWithExtra]?) {
        self.gifts = gifts
        self.goods = goods
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(gifts, forKey: "gifts")
        try container.encodeIfPresent(goods, forKey: "goods")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                gifts = try container.decodeIfPresent([CartItem].self, forKey: "gifts")
                goods = try container.decodeIfPresent([CartItemWithExtra].self, forKey: "goods")
    }
}
