//
// TbTimeResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Информация о занятости времени за запрошенные даты */

open class TbTimeResponse: Codable {

    public var timeInfo: [TbTimeInfoDate]


    public init(timeInfo: [TbTimeInfoDate]) {
        self.timeInfo = timeInfo
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(timeInfo, forKey: "timeInfo")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                timeInfo = try container.decode([TbTimeInfoDate].self, forKey: "timeInfo")
    }
}

