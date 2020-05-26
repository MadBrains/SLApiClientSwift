//
// TbTimeInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class TbTimeInfo: Codable {

    public var closed: Bool
    public var time: String
    public var value: [Int]


    public init(closed: Bool, time: String, value: [Int]) {
        self.closed = closed
        self.time = time
        self.value = value
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(closed, forKey: "closed")
        try container.encode(time, forKey: "time")
        try container.encode(value, forKey: "value")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                closed = try container.decode(Bool.self, forKey: "closed")
                time = try container.decode(String.self, forKey: "time")
                value = try container.decode([Int].self, forKey: "value")
    }
}
