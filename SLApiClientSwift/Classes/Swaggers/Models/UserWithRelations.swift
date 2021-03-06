//
// UserWithRelations.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Пользователь расширенный */

open class UserWithRelations: Codable {

    /** День рождения. Определен в full-date - RFC3339 */
    public var birthday: String?
    /** Идентификатор компании */
    public var cid: String?
    /** Таймштамп создания (Unix) */
    public var createdAt: Int64?
    /** Имя */
    public var firstName: String?
    /** Группы пользователя */
    public var groups: [String]?
    /** Фамилия */
    public var lastName: String?
    /** Логин. Начинается с буквы, длинной не менее 2х символов */
    public var login: String?
    /** Отчество */
    public var middleName: String?
    /** URL изображения */
    public var profilePicture: String?
    /** Идентификатор пользователя внешний системы */
    public var remoteId: String?
    /** Cписок основан на базе данных временных зон https://www.iana.org/time-zones (https://tools.ietf.org/html/rfc6557) */
    public var timezone: String?
    /** Идентификатор */
    public var uid: String?
    /** Таймштамп обновления (Unix) */
    public var updatedAt: Int64?
    /** Контакты. При изменения флаг подтвержденности сбрасывается сервером */
    public var communications: [Communication]?
    public var location: Address?
    /** Свойства. */
    public var properties: [IPropertyValue]?


    public init(birthday: String?, cid: String?, createdAt: Int64?, firstName: String?, groups: [String]?, lastName: String?, login: String?, middleName: String?, profilePicture: String?, remoteId: String?, timezone: String?, uid: String?, updatedAt: Int64?, communications: [Communication]?, location: Address?, properties: [IPropertyValue]?) {
        self.birthday = birthday
        self.cid = cid
        self.createdAt = createdAt
        self.firstName = firstName
        self.groups = groups
        self.lastName = lastName
        self.login = login
        self.middleName = middleName
        self.profilePicture = profilePicture
        self.remoteId = remoteId
        self.timezone = timezone
        self.uid = uid
        self.updatedAt = updatedAt
        self.communications = communications
        self.location = location
        self.properties = properties
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(birthday, forKey: "birthday")
        try container.encodeIfPresent(cid, forKey: "cid")
        try container.encodeIfPresent(createdAt, forKey: "created_at")
        try container.encodeIfPresent(firstName, forKey: "firstName")
        try container.encodeIfPresent(groups, forKey: "groups")
        try container.encodeIfPresent(lastName, forKey: "lastName")
        try container.encodeIfPresent(login, forKey: "login")
        try container.encodeIfPresent(middleName, forKey: "middleName")
        try container.encodeIfPresent(profilePicture, forKey: "profilePicture")
        try container.encodeIfPresent(remoteId, forKey: "remoteId")
        try container.encodeIfPresent(timezone, forKey: "timezone")
        try container.encodeIfPresent(uid, forKey: "uid")
        try container.encodeIfPresent(updatedAt, forKey: "updated_at")
        try container.encodeIfPresent(communications, forKey: "communications")
        try container.encodeIfPresent(location, forKey: "location")
        try container.encodeIfPresent(properties, forKey: "properties")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                birthday = try container.decodeIfPresent(String.self, forKey: "birthday")
                cid = try container.decodeIfPresent(String.self, forKey: "cid")
                createdAt = try container.decodeIfPresent(Int64.self, forKey: "created_at")
                firstName = try container.decodeIfPresent(String.self, forKey: "firstName")
                groups = try container.decodeIfPresent([String].self, forKey: "groups")
                lastName = try container.decodeIfPresent(String.self, forKey: "lastName")
                login = try container.decodeIfPresent(String.self, forKey: "login")
                middleName = try container.decodeIfPresent(String.self, forKey: "middleName")
                profilePicture = try container.decodeIfPresent(String.self, forKey: "profilePicture")
                remoteId = try container.decodeIfPresent(String.self, forKey: "remoteId")
                timezone = try container.decodeIfPresent(String.self, forKey: "timezone")
                uid = try container.decodeIfPresent(String.self, forKey: "uid")
                updatedAt = try container.decodeIfPresent(Int64.self, forKey: "updated_at")
                communications = try container.decodeIfPresent([Communication].self, forKey: "communications")
                location = try container.decodeIfPresent(Address.self, forKey: "location")
                properties = try container.decodeIfPresent([IPropertyValue].self, forKey: "properties")
    }
}

