//
// DocumentResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Объект ответа на запрос списка документов и групп */

open class DocumentResponse: Codable {

    /** Документы группы */
    public var documents: [Document]?
    public var group: Group?
    /** Подгруппы */
    public var groups: [Group]?


    public init(documents: [Document]?, group: Group?, groups: [Group]?) {
        self.documents = documents
        self.group = group
        self.groups = groups
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(documents, forKey: "documents")
        try container.encodeIfPresent(group, forKey: "group")
        try container.encodeIfPresent(groups, forKey: "groups")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                documents = try container.decodeIfPresent([Document].self, forKey: "documents")
                group = try container.decodeIfPresent(Group.self, forKey: "group")
                groups = try container.decodeIfPresent([Group].self, forKey: "groups")
    }
}

