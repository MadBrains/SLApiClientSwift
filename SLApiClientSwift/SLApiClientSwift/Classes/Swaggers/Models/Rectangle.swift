//
// Rectangle.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Координаты прямоугольника */

open class Rectangle: Codable {

    public var bottomRightPoint: Point
    public var topLeftPoint: Point


    public init(bottomRightPoint: Point, topLeftPoint: Point) {
        self.bottomRightPoint = bottomRightPoint
        self.topLeftPoint = topLeftPoint
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(bottomRightPoint, forKey: "bottomRightPoint")
        try container.encode(topLeftPoint, forKey: "topLeftPoint")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                bottomRightPoint = try container.decode(Point.self, forKey: "bottomRightPoint")
                topLeftPoint = try container.decode(Point.self, forKey: "topLeftPoint")
    }
}
