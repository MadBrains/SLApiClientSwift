//
// TbSignupRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class TbSignupRequest: Codable {

    /** Наименование банка */
    public var bankName: String?
    /** БИК */
    public var bik: String?
    /** Расчетный счет */
    public var checkingAccount: String?
    /** Электронная почта компании */
    public var companyEmail: String?
    /** Наименование компании */
    public var companyName: String?
    /** Телефон компании */
    public var companyPhone: String?
    /** Корреспондентский счет */
    public var correspondentAccount: String?
    /** Электронная почта */
    public var email: String
    /** Имя */
    public var firstName: String
    /** ИНН */
    public var inn: String?
    /** КПП */
    public var kpp: String?
    /** Фамилия */
    public var lastName: String
    /** Отчество */
    public var middleName: String?
    /** ОГРН */
    public var ogrn: String?
    /** ОГРНИП */
    public var ogrnip: String?
    /** Вид деятельности (ОКВЭД) */
    public var okved: [String]?
    /** Пароль */
    public var password: String
    /** Телефон */
    public var phone: String


    public init(bankName: String?, bik: String?, checkingAccount: String?, companyEmail: String?, companyName: String?, companyPhone: String?, correspondentAccount: String?, email: String, firstName: String, inn: String?, kpp: String?, lastName: String, middleName: String?, ogrn: String?, ogrnip: String?, okved: [String]?, password: String, phone: String) {
        self.bankName = bankName
        self.bik = bik
        self.checkingAccount = checkingAccount
        self.companyEmail = companyEmail
        self.companyName = companyName
        self.companyPhone = companyPhone
        self.correspondentAccount = correspondentAccount
        self.email = email
        self.firstName = firstName
        self.inn = inn
        self.kpp = kpp
        self.lastName = lastName
        self.middleName = middleName
        self.ogrn = ogrn
        self.ogrnip = ogrnip
        self.okved = okved
        self.password = password
        self.phone = phone
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(bankName, forKey: "bankName")
        try container.encodeIfPresent(bik, forKey: "bik")
        try container.encodeIfPresent(checkingAccount, forKey: "checkingAccount")
        try container.encodeIfPresent(companyEmail, forKey: "companyEmail")
        try container.encodeIfPresent(companyName, forKey: "companyName")
        try container.encodeIfPresent(companyPhone, forKey: "companyPhone")
        try container.encodeIfPresent(correspondentAccount, forKey: "correspondentAccount")
        try container.encode(email, forKey: "email")
        try container.encode(firstName, forKey: "firstName")
        try container.encodeIfPresent(inn, forKey: "inn")
        try container.encodeIfPresent(kpp, forKey: "kpp")
        try container.encode(lastName, forKey: "lastName")
        try container.encodeIfPresent(middleName, forKey: "middleName")
        try container.encodeIfPresent(ogrn, forKey: "ogrn")
        try container.encodeIfPresent(ogrnip, forKey: "ogrnip")
        try container.encodeIfPresent(okved, forKey: "okved")
        try container.encode(password, forKey: "password")
        try container.encode(phone, forKey: "phone")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

                bankName = try container.decodeIfPresent(String.self, forKey: "bankName")
                bik = try container.decodeIfPresent(String.self, forKey: "bik")
                checkingAccount = try container.decodeIfPresent(String.self, forKey: "checkingAccount")
                companyEmail = try container.decodeIfPresent(String.self, forKey: "companyEmail")
                companyName = try container.decodeIfPresent(String.self, forKey: "companyName")
                companyPhone = try container.decodeIfPresent(String.self, forKey: "companyPhone")
                correspondentAccount = try container.decodeIfPresent(String.self, forKey: "correspondentAccount")
                email = try container.decode(String.self, forKey: "email")
                firstName = try container.decode(String.self, forKey: "firstName")
                inn = try container.decodeIfPresent(String.self, forKey: "inn")
                kpp = try container.decodeIfPresent(String.self, forKey: "kpp")
                lastName = try container.decode(String.self, forKey: "lastName")
                middleName = try container.decodeIfPresent(String.self, forKey: "middleName")
                ogrn = try container.decodeIfPresent(String.self, forKey: "ogrn")
                ogrnip = try container.decodeIfPresent(String.self, forKey: "ogrnip")
                okved = try container.decodeIfPresent([String].self, forKey: "okved")
                password = try container.decode(String.self, forKey: "password")
                phone = try container.decode(String.self, forKey: "phone")
    }
}

