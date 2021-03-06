//
// StatisticsEventCatalogItemShow.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Событие просмотра товара в каталоге */

open class StatisticsEventCatalogItemShow: Codable {

    /** Идентификатор товара */
    public var id: String
    /** Идентификатор пользователя */
    public var uid: String?


    public init(id: String, uid: String?) {
        self.id = id
        self.uid = uid
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(id, forKey: "id")
        try container.encodeIfPresent(uid, forKey: "uid")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                id = try container.decode(String.self, forKey: "id")
                uid = try container.decodeIfPresent(String.self, forKey: "uid")
    }
}

