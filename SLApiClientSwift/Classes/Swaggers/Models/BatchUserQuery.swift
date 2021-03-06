//
// BatchUserQuery.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Объект возвращаемый при пакетном добавлении */

open class BatchUserQuery: Codable {

    public enum Status: String, Codable { 
        case ok = "Ok"
        case error = "Error"
    }
    /** Список ошибоок возникших при обработке файла */
    public var errors: [BatchErrorsModel]?
    /** Список с данными по пользователям которые уже существуют в  сервисе Dynamic */
    public var existingUsers: [ExistingUsersModel]?
    /** Статус результата выполнения запроса */
    public var status: Status


    public init(errors: [BatchErrorsModel]?, existingUsers: [ExistingUsersModel]?, status: Status) {
        self.errors = errors
        self.existingUsers = existingUsers
        self.status = status
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(errors, forKey: "errors")
        try container.encodeIfPresent(existingUsers, forKey: "existingUsers")
        try container.encode(status, forKey: "status")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                errors = try container.decodeIfPresent([BatchErrorsModel].self, forKey: "errors")
                existingUsers = try container.decodeIfPresent([ExistingUsersModel].self, forKey: "existingUsers")
                status = try container.decode(Status.self, forKey: "status")
    }
}

