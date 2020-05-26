//
// ShininvestTimeblock.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Временной слот */

open class ShininvestTimeblock: Codable {

    /** Дата рассписания по RFC 3339, section 5.6, for example, 2017-07-21 */
    public var date: String?
    /** Идентификатор */
    public var resourceId: UUID?
    /** Идентификатор */
    public var shopId: UUID?
    /** Таймштамп начала слота от полуночи */
    public var time: Double?


    public init(date: String?, resourceId: UUID?, shopId: UUID?, time: Double?) {
        self.date = date
        self.resourceId = resourceId
        self.shopId = shopId
        self.time = time
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(date, forKey: "date")
        try container.encodeIfPresent(resourceId, forKey: "resourceId")
        try container.encodeIfPresent(shopId, forKey: "shopId")
        try container.encodeIfPresent(time, forKey: "time")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                date = try container.decodeIfPresent(String.self, forKey: "date")
                resourceId = try container.decodeIfPresent(UUID.self, forKey: "resourceId")
                shopId = try container.decodeIfPresent(UUID.self, forKey: "shopId")
                time = try container.decodeIfPresent(Double.self, forKey: "time")
    }
}

