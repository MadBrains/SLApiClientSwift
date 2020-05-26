//
// OrderWithRelations.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Заказ расширенный. Одновременно присутствие items и service недопустимо */

open class OrderWithRelations: Codable {

    public enum PaymentType: String, Codable { 
        case card = "card"
        case cash = "cash"
        case cardondelivery = "cardOnDelivery"
    }
    public enum Status: String, Codable { 
        case cart = "cart"
        case create = "create"
        case confirmed = "confirmed"
        case await = "await"
        case pay = "pay"
        case delivery = "delivery"
        case complete = "complete"
        case cancelled = "cancelled"
        case rejected = "rejected"
    }
    /** Unixstamp создания (не указывать при создании/изменении) */
    public var createdAt: Int64?
    /** Емейл пользователя */
    public var email: String?
    /** Текст ошибки для статуса rejected (отмена заказа). Может заменяться любым другим текстовым сообщением */
    public var error: String?
    /** Имя */
    public var firstName: String?
    /** Идентификатор заказа (не указывать) */
    public var id: String?
    /** Фамилия */
    public var lastName: String?
    /** Отчество */
    public var middleName: String?
    /** Номер заказа (не указывать) */
    public var number: String?
    /** Вид платежа * card - банковская карта * cash - наличные * cardOnDelivery - картой при получении  */
    public var paymentType: PaymentType?
    /** Телефон пользователя */
    public var phone: String?
    /** Идентификатор заказа во внешней системе (кассовый сервер, 1С и т.д.) */
    public var remoteId: String?
    /** Статус заказа * cart - корзина, заказ еще формируется * create - создан * confirmed - подтвержден * await - ожидает подтверждения * pay - ожидает оплаты * delivery - доставка * complete - выполнен * cancelled - отменен * rejected - отклонен  */
    public var status: Status?
    /** Unixstamp обновления (не указывать при создании/изменении) */
    public var updatedAt: Int64?
    /** Идентификатор пользователя (не указывать) */
    public var userId: String?
    public var delivery: OrderDelivery?
    public var items: [OrderItem]?
    public var payment: OrderPayment?
    public var properties: [IPropertyValue]?
    public var services: OrderService?


    public init(createdAt: Int64?, email: String?, error: String?, firstName: String?, id: String?, lastName: String?, middleName: String?, number: String?, paymentType: PaymentType?, phone: String?, remoteId: String?, status: Status?, updatedAt: Int64?, userId: String?, delivery: OrderDelivery?, items: [OrderItem]?, payment: OrderPayment?, properties: [IPropertyValue]?, services: OrderService?) {
        self.createdAt = createdAt
        self.email = email
        self.error = error
        self.firstName = firstName
        self.id = id
        self.lastName = lastName
        self.middleName = middleName
        self.number = number
        self.paymentType = paymentType
        self.phone = phone
        self.remoteId = remoteId
        self.status = status
        self.updatedAt = updatedAt
        self.userId = userId
        self.delivery = delivery
        self.items = items
        self.payment = payment
        self.properties = properties
        self.services = services
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(createdAt, forKey: "created_at")
        try container.encodeIfPresent(email, forKey: "email")
        try container.encodeIfPresent(error, forKey: "error")
        try container.encodeIfPresent(firstName, forKey: "firstName")
        try container.encodeIfPresent(id, forKey: "id")
        try container.encodeIfPresent(lastName, forKey: "lastName")
        try container.encodeIfPresent(middleName, forKey: "middleName")
        try container.encodeIfPresent(number, forKey: "number")
        try container.encodeIfPresent(paymentType, forKey: "paymentType")
        try container.encodeIfPresent(phone, forKey: "phone")
        try container.encodeIfPresent(remoteId, forKey: "remoteId")
        try container.encodeIfPresent(status, forKey: "status")
        try container.encodeIfPresent(updatedAt, forKey: "updated_at")
        try container.encodeIfPresent(userId, forKey: "userId")
        try container.encodeIfPresent(delivery, forKey: "delivery")
        try container.encodeIfPresent(items, forKey: "items")
        try container.encodeIfPresent(payment, forKey: "payment")
        try container.encodeIfPresent(properties, forKey: "properties")
        try container.encodeIfPresent(services, forKey: "services")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                createdAt = try container.decodeIfPresent(Int64.self, forKey: "created_at")
                email = try container.decodeIfPresent(String.self, forKey: "email")
                error = try container.decodeIfPresent(String.self, forKey: "error")
                firstName = try container.decodeIfPresent(String.self, forKey: "firstName")
                id = try container.decodeIfPresent(String.self, forKey: "id")
                lastName = try container.decodeIfPresent(String.self, forKey: "lastName")
                middleName = try container.decodeIfPresent(String.self, forKey: "middleName")
                number = try container.decodeIfPresent(String.self, forKey: "number")
                paymentType = try container.decodeIfPresent(PaymentType.self, forKey: "paymentType")
                phone = try container.decodeIfPresent(String.self, forKey: "phone")
                remoteId = try container.decodeIfPresent(String.self, forKey: "remoteId")
                status = try container.decodeIfPresent(Status.self, forKey: "status")
                updatedAt = try container.decodeIfPresent(Int64.self, forKey: "updated_at")
                userId = try container.decodeIfPresent(String.self, forKey: "userId")
                delivery = try container.decodeIfPresent(OrderDelivery.self, forKey: "delivery")
                items = try container.decodeIfPresent([OrderItem].self, forKey: "items")
                payment = try container.decodeIfPresent(OrderPayment.self, forKey: "payment")
                properties = try container.decodeIfPresent([IPropertyValue].self, forKey: "properties")
                services = try container.decodeIfPresent(OrderService.self, forKey: "services")
    }
}
