//
// ResponseBatchUpdateModel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Объект ответа на запрос пакетного обновления */

open class ResponseBatchUpdateModel: Codable {

    public enum Status: String, Codable { 
        case ok = "Ok"
        case error = "Error"
    }
    public var data: ExistingUsersModel
    /** Описанание ошибки если статус равен Error */
    public var error: String?
    /** Статус результата обновления модели */
    public var status: Status


    public init(data: ExistingUsersModel, error: String?, status: Status) {
        self.data = data
        self.error = error
        self.status = status
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(data, forKey: "data")
        try container.encodeIfPresent(error, forKey: "error")
        try container.encode(status, forKey: "status")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                data = try container.decode(ExistingUsersModel.self, forKey: "data")
                error = try container.decodeIfPresent(String.self, forKey: "error")
                status = try container.decode(Status.self, forKey: "status")
    }
}

