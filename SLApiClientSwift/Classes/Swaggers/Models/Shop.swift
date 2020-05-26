//
// Shop.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Магазин */

open class Shop: Codable {

    /** Адрес */
    public var address: String?
    /** Идентификатор родительской группы. Если пусто, то в корне располагается */
    public var group: UUID?
    /** Идентификатор */
    public var id: String?
    /** Флаг означающий автоматически импортирована сущность или нет */
    public var _import: Bool?
    public var location: Point?
    /** Название магазина */
    public var name: String
    /** Номера телефонов точки продаж */
    public var phones: [String]?
    /** Cписок основан на базе данных временных https://www.iana.org/time-zones (https://tools.ietf.org/html/rfc6557) */
    public var timezone: String?
    public var workTimes: WeekWorkTime?


    public init(address: String?, group: UUID?, id: String?, _import: Bool?, location: Point?, name: String, phones: [String]?, timezone: String?, workTimes: WeekWorkTime?) {
        self.address = address
        self.group = group
        self.id = id
        self._import = _import
        self.location = location
        self.name = name
        self.phones = phones
        self.timezone = timezone
        self.workTimes = workTimes
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(address, forKey: "address")
        try container.encodeIfPresent(group, forKey: "group")
        try container.encodeIfPresent(id, forKey: "id")
        try container.encodeIfPresent(_import, forKey: "import")
        try container.encodeIfPresent(location, forKey: "location")
        try container.encode(name, forKey: "name")
        try container.encodeIfPresent(phones, forKey: "phones")
        try container.encodeIfPresent(timezone, forKey: "timezone")
        try container.encodeIfPresent(workTimes, forKey: "workTimes")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                address = try container.decodeIfPresent(String.self, forKey: "address")
                group = try container.decodeIfPresent(UUID.self, forKey: "group")
                id = try container.decodeIfPresent(String.self, forKey: "id")
                _import = try container.decodeIfPresent(Bool.self, forKey: "import")
                location = try container.decodeIfPresent(Point.self, forKey: "location")
                name = try container.decode(String.self, forKey: "name")
                phones = try container.decodeIfPresent([String].self, forKey: "phones")
                timezone = try container.decodeIfPresent(String.self, forKey: "timezone")
                workTimes = try container.decodeIfPresent(WeekWorkTime.self, forKey: "workTimes")
    }
}
