//
// ListIds.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Объект содержащий список идентификаторов */

open class ListIds: Codable {

    public var ids: [String]


    public init(ids: [String]) {
        self.ids = ids
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(ids, forKey: "ids")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                ids = try container.decode([String].self, forKey: "ids")
    }
}

