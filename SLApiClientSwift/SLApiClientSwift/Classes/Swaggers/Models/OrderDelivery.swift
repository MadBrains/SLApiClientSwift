//
// OrderDelivery.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Данные о доставке заказа.  Важно. Так как появилось новое поле \&quot;typ\&quot; взамен поля \&quot;deliveryType\&quot; и свойства \&quot;deliveryType\&quot;, то если в заказе есть свойство \&quot;deliveryType\&quot; или указано поле \&quot;deliveryType\&quot; и при этом поле \&quot;typ\&quot; &#x3D;&#x3D; \&quot;undefined\&quot;, то значение в поле \&quot;typ\&quot; устанавливается из свойства или поля \&quot;deliveryType\&quot;. Это сделано для того, чтобы старые приложения \&quot;прозрачно\&quot; заполняли новое поле \&quot;typ\&quot;.  */

open class OrderDelivery: Codable {

    public enum Typ: String, Codable { 
        case undefined = "undefined"
        case pickup = "pickup"
        case delivery = "delivery"
    }
    /** Адрес. Включает в себя улицу и дом */
    public var address: String?
    /** Номер квартиры */
    public var apartment: String?
    /** Город. Может включать в себя так же регион */
    public var city: String?
    /** Комментарий заказа */
    public var comment: String?
    /** Имя получателя. Может отличаться от имени заказчика */
    public var contactName: String?
    /** Номер телефона получателя. Только цифры. Может отличаться от телефона заказчика */
    public var contactPhone: String?
    /** DEPRECATED Тип доставки (заменен на поле \&quot;typ\&quot;) */
    public var deliveryType: String?
    /** Код домофона */
    public var doorphone: String?
    /** Этаж */
    public var floor: String?
    /** Подъезд */
    public var staircase: String?
    /** Тип доставки * undefined - Неопределенный тип (используется как скрывающий атрибут строки доставки в шаблоне письма) * pickup - Самовывоз * delivery - Доставка  */
    public var typ: Typ?


    public init(address: String?, apartment: String?, city: String?, comment: String?, contactName: String?, contactPhone: String?, deliveryType: String?, doorphone: String?, floor: String?, staircase: String?, typ: Typ?) {
        self.address = address
        self.apartment = apartment
        self.city = city
        self.comment = comment
        self.contactName = contactName
        self.contactPhone = contactPhone
        self.deliveryType = deliveryType
        self.doorphone = doorphone
        self.floor = floor
        self.staircase = staircase
        self.typ = typ
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(address, forKey: "address")
        try container.encodeIfPresent(apartment, forKey: "apartment")
        try container.encodeIfPresent(city, forKey: "city")
        try container.encodeIfPresent(comment, forKey: "comment")
        try container.encodeIfPresent(contactName, forKey: "contactName")
        try container.encodeIfPresent(contactPhone, forKey: "contactPhone")
        try container.encodeIfPresent(deliveryType, forKey: "deliveryType")
        try container.encodeIfPresent(doorphone, forKey: "doorphone")
        try container.encodeIfPresent(floor, forKey: "floor")
        try container.encodeIfPresent(staircase, forKey: "staircase")
        try container.encodeIfPresent(typ, forKey: "typ")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                address = try container.decodeIfPresent(String.self, forKey: "address")
                apartment = try container.decodeIfPresent(String.self, forKey: "apartment")
                city = try container.decodeIfPresent(String.self, forKey: "city")
                comment = try container.decodeIfPresent(String.self, forKey: "comment")
                contactName = try container.decodeIfPresent(String.self, forKey: "contactName")
                contactPhone = try container.decodeIfPresent(String.self, forKey: "contactPhone")
                deliveryType = try container.decodeIfPresent(String.self, forKey: "deliveryType")
                doorphone = try container.decodeIfPresent(String.self, forKey: "doorphone")
                floor = try container.decodeIfPresent(String.self, forKey: "floor")
                staircase = try container.decodeIfPresent(String.self, forKey: "staircase")
                typ = try container.decodeIfPresent(Typ.self, forKey: "typ")
    }
}

