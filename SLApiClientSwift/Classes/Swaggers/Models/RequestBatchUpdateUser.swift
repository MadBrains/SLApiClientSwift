//
// RequestBatchUpdateUser.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Объект запроса пакетного обновления пользователей */

open class RequestBatchUpdateUser: Codable {

    /** Список моделей для обновления */
    public var batchUpdateUser: [ExistingUsersModel]


    public init(batchUpdateUser: [ExistingUsersModel]) {
        self.batchUpdateUser = batchUpdateUser
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(batchUpdateUser, forKey: "batchUpdateUser")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                batchUpdateUser = try container.decode([ExistingUsersModel].self, forKey: "batchUpdateUser")
    }
}
