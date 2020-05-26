//
// SearchFilter.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Объект запроса поиска элементов каталога */

open class SearchFilter: Codable {

    public enum Mode: String, Codable { 
        case and = "and"
        case or = "or"
    }
    /** Название поля */
    public var field: String?
    /** Логическая операция для элементов subFilter */
    public var mode: Mode?
    /** Массив searchFilter объектов подусловий свойств второго уровня и так далее */
    public var subFilter: [SearchFilter]?
    /** Значение поля. Может быть массив из двух числовых элементов где элемент первый это нижная граница, а элемент второй это верхная граница (если один из них будет null, тогда нет ограничения соответствующего) или если это строка то принимая во внимание cmp. Если value не передается, то проверяется наличие атрибута */
    public var value: Any?


    public init(field: String?, mode: Mode?, subFilter: [SearchFilter]?, value: Any?) {
        self.field = field
        self.mode = mode
        self.subFilter = subFilter
        self.value = value
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(field, forKey: "field")
        try container.encodeIfPresent(mode, forKey: "mode")
        try container.encodeIfPresent(subFilter, forKey: "subFilter")
        try container.encodeIfPresent(value, forKey: "value")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                field = try container.decodeIfPresent(String.self, forKey: "field")
                mode = try container.decodeIfPresent(Mode.self, forKey: "mode")
                subFilter = try container.decodeIfPresent([SearchFilter].self, forKey: "subFilter")
                value = try container.decodeIfPresent(Any.self, forKey: "value")
    }
}
