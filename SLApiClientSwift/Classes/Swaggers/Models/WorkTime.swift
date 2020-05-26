//
// WorkTime.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Рабочее время точки продаж */

open class WorkTime: Codable {

    /** Время начала работы магазина в секундах от полуночи */
    public var begin: Int64
    /** Время начала работы магазина в секундах от полуночи */
    public var end: Int64


    public init(begin: Int64, end: Int64) {
        self.begin = begin
        self.end = end
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(begin, forKey: "begin")
        try container.encode(end, forKey: "end")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                begin = try container.decode(Int64.self, forKey: "begin")
                end = try container.decode(Int64.self, forKey: "end")
    }
}
