//
// CloudLoyaltyHistory.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Элемент истории. Поля по типу OPERATION_APPLIED умышленно не пробрасываются */

open class CloudLoyaltyHistory: Codable {

    /** количество бонусов, на которое изменилось состояние счета Для операций прихода значение положительное. Для расхода - отрицательное  */
    public var amount: Double
    /** дата произошедшего события */
    public var at: String
    /** вид произведенной операции Одно из следующих значений: * OPERATION_APPLIED - списание на оплату покупки (расход) * OPERATION_COLLECTED - начисление за покупку (приход) * OPERATION_EXPIRED - сгорание бонусов по истечении срока (расход) * OPERATION_REFUNDED - отмена списания бонусов при возврате товара (приход) * OPERATION_CANCELLED - отмена начисленных бонусов при возврате товара (расход) * OPERATION_RECEIVED - начисление акционных бонусов (приход) * OPERATION_RECALLED - отзыв акционных бонусов (расход) * OPERATION_APPLY_REVERTED - откат списанных бонусов при откате транзакции продажи (приход) * OPERATION_COLLECT_REVERTED - откат начисленных бонусов при откате транзакции продажи (расход) Список операций в будущем может быть расширен.  */
    public var operation: String
    /** описание операции  Одно из следующих значений: * Оплата покупки * Начисление за покупку * Списание по истечении срока * Отмена списания * Отмена начисления * Начисление по акции * Отмена Список операций в будущем может быть расширен.  */
    public var operationName: String


    public init(amount: Double, at: String, operation: String, operationName: String) {
        self.amount = amount
        self.at = at
        self.operation = operation
        self.operationName = operationName
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(amount, forKey: "amount")
        try container.encode(at, forKey: "at")
        try container.encode(operation, forKey: "operation")
        try container.encode(operationName, forKey: "operationName")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                amount = try container.decode(Double.self, forKey: "amount")
                at = try container.decode(String.self, forKey: "at")
                operation = try container.decode(String.self, forKey: "operation")
                operationName = try container.decode(String.self, forKey: "operationName")
    }
}

