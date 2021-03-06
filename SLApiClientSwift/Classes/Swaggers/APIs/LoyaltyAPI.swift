//
// LoyaltyAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class LoyaltyAPI {
    /**
     Запрос истории привязанной карты
     
     - parameter limit: (query) Количество выбираемых элементов (optional, default to 50)
     - parameter offset: (query) Смещение от начала выборки (optional, default to 0)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getLoyaltyCardHistory(limit: Int64? = nil, offset: Int64? = nil, completion: @escaping ((_ data: [LoyaltyHistory]?,_ error: Error?) -> Void)) {
        getLoyaltyCardHistoryWithRequestBuilder(limit: limit, offset: offset).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запрос истории привязанной карты
     - GET /loyalty/card/history/
     - Запрос истории привязанной карты
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example=[ {
  "balanceChange" : 0.8008282,
  "mechanic" : "custom",
  "time" : 6,
  "message" : "message"
}, {
  "balanceChange" : 0.8008282,
  "mechanic" : "custom",
  "time" : 6,
  "message" : "message"
} ]}]
     
     - parameter limit: (query) Количество выбираемых элементов (optional, default to 50)
     - parameter offset: (query) Смещение от начала выборки (optional, default to 0)

     - returns: RequestBuilder<[LoyaltyHistory]> 
     */
    open class func getLoyaltyCardHistoryWithRequestBuilder(limit: Int64? = nil, offset: Int64? = nil) -> RequestBuilder<[LoyaltyHistory]> {
        let path = "/loyalty/card/history/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "limit": limit?.encodeToJSON(), 
            "offset": offset?.encodeToJSON()
        ])
        

        let requestBuilder: RequestBuilder<[LoyaltyHistory]>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Запрос истории карты
     
     - parameter cardNumber: (path) Номер карты 
     - parameter limit: (query) Количество выбираемых элементов (optional, default to 50)
     - parameter offset: (query) Смещение от начала выборки (optional, default to 0)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getLoyaltyCardHistoryByCardnumber(cardNumber: String, limit: Int64? = nil, offset: Int64? = nil, completion: @escaping ((_ data: [LoyaltyHistory]?,_ error: Error?) -> Void)) {
        getLoyaltyCardHistoryByCardnumberWithRequestBuilder(cardNumber: cardNumber, limit: limit, offset: offset).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запрос истории карты
     - GET /loyalty/card/history/{cardNumber}/
     - Запрос истории карты для административной панели
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example=[ {
  "balanceChange" : 0.8008282,
  "mechanic" : "custom",
  "time" : 6,
  "message" : "message"
}, {
  "balanceChange" : 0.8008282,
  "mechanic" : "custom",
  "time" : 6,
  "message" : "message"
} ]}]
     
     - parameter cardNumber: (path) Номер карты 
     - parameter limit: (query) Количество выбираемых элементов (optional, default to 50)
     - parameter offset: (query) Смещение от начала выборки (optional, default to 0)

     - returns: RequestBuilder<[LoyaltyHistory]> 
     */
    open class func getLoyaltyCardHistoryByCardnumberWithRequestBuilder(cardNumber: String, limit: Int64? = nil, offset: Int64? = nil) -> RequestBuilder<[LoyaltyHistory]> {
        var path = "/loyalty/card/history/{cardNumber}/"
        path = path.replacingOccurrences(of: "{cardNumber}", with: "\(cardNumber)", options: .literal, range: nil)
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "limit": limit?.encodeToJSON(), 
            "offset": offset?.encodeToJSON()
        ])
        

        let requestBuilder: RequestBuilder<[LoyaltyHistory]>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Получение информации о бонусном счете клиента
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getLoyaltyCloudloyaltyCard(completion: @escaping ((_ data: CloudLoyaltyBalance?,_ error: Error?) -> Void)) {
        getLoyaltyCloudloyaltyCardWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Получение информации о бонусном счете клиента
     - GET /loyalty/cloudloyalty/card/
     - При запросе из профиля пользователя берется подтвержденный телефон (если таковой не имеется то возращается ошибка 404), далее с этим номером происходит запрос по маршруту /get-balance
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example={
  "client" : {
    "birthdate" : "birthdate",
    "gender" : 5.962133916683182377482808078639209270477294921875,
    "cardString" : "cardString",
    "level" : 5.63737665663332876420099637471139430999755859375,
    "externalId" : "externalId",
    "fullName" : "fullName",
    "phoneNumber" : "phoneNumber",
    "surname" : "surname",
    "name" : "name",
    "patronymicName" : "patronymicName",
    "pendingBonuses" : 2.3021358869347654518833223846741020679473876953125,
    "bonuses" : 6.02745618307040320615897144307382404804229736328125,
    "card" : 1.46581298050294517310021547018550336360931396484375,
    "email" : "email"
  },
  "bonuses" : [ {
    "amount" : 0.80082819046101150206595775671303272247314453125,
    "expireAt" : "expireAt"
  }, {
    "amount" : 0.80082819046101150206595775671303272247314453125,
    "expireAt" : "expireAt"
  } ]
}}]

     - returns: RequestBuilder<CloudLoyaltyBalance> 
     */
    open class func getLoyaltyCloudloyaltyCardWithRequestBuilder() -> RequestBuilder<CloudLoyaltyBalance> {
        let path = "/loyalty/cloudloyalty/card/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<CloudLoyaltyBalance>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     История начислений и списаний
     
     - parameter limit: (query) указывает максимальное число возвращаемых записей Максмальное значение - 100, минимальное - 1.  (optional)
     - parameter offset: (query) указывает смещение, с которого начнется возвращение данных Начало отсчета - 0.  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getLoyaltyCloudloyaltyCardHistory(limit: Double? = nil, offset: Double? = nil, completion: @escaping ((_ data: CloudLoyaltyHistoryResponse?,_ error: Error?) -> Void)) {
        getLoyaltyCloudloyaltyCardHistoryWithRequestBuilder(limit: limit, offset: offset).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     История начислений и списаний
     - GET /loyalty/cloudloyalty/card/history/
     - При запросе используется externalId в системе Napoleon, запрос отправляется по маршруту /get-history
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example={
  "pagination" : {
    "total" : 6.02745618307040320615897144307382404804229736328125
  },
  "history" : [ {
    "amount" : 0.80082819046101150206595775671303272247314453125,
    "at" : "at",
    "operationName" : "operationName",
    "operation" : "operation"
  }, {
    "amount" : 0.80082819046101150206595775671303272247314453125,
    "at" : "at",
    "operationName" : "operationName",
    "operation" : "operation"
  } ]
}}]
     
     - parameter limit: (query) указывает максимальное число возвращаемых записей Максмальное значение - 100, минимальное - 1.  (optional)
     - parameter offset: (query) указывает смещение, с которого начнется возвращение данных Начало отсчета - 0.  (optional)

     - returns: RequestBuilder<CloudLoyaltyHistoryResponse> 
     */
    open class func getLoyaltyCloudloyaltyCardHistoryWithRequestBuilder(limit: Double? = nil, offset: Double? = nil) -> RequestBuilder<CloudLoyaltyHistoryResponse> {
        let path = "/loyalty/cloudloyalty/card/history/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "limit": limit, 
            "offset": offset
        ])
        

        let requestBuilder: RequestBuilder<CloudLoyaltyHistoryResponse>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Запрос кода приглашения пользователя
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getLoyaltyMechanicsInviteCode(completion: @escaping ((_ data: LoyaltyInviteCode?,_ error: Error?) -> Void)) {
        getLoyaltyMechanicsInviteCodeWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запрос кода приглашения пользователя
     - GET /loyalty/mechanics/invite/code/
     - Запрос кода приглашения пользователя. Код генерируется единожды для каждого аккаута, что позволяет пользователю распространять код в социальных сетях. 
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example={
  "code" : "code"
}}]

     - returns: RequestBuilder<LoyaltyInviteCode> 
     */
    open class func getLoyaltyMechanicsInviteCodeWithRequestBuilder() -> RequestBuilder<LoyaltyInviteCode> {
        let path = "/loyalty/mechanics/invite/code/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<LoyaltyInviteCode>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Запрос идентификатора группы в социальной сети
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getLoyaltyMechanicsProfileInstagramGroup(completion: @escaping ((_ data: LoyaltyInstagramId?,_ error: Error?) -> Void)) {
        getLoyaltyMechanicsProfileInstagramGroupWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запрос идентификатора группы в социальной сети
     - GET /loyalty/mechanics/profile/instagram/group/
     - Запрос идентификатора группы в социальной сети при вступлении в которую будет применяться текущая механика
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example={
  "id" : "id"
}}]

     - returns: RequestBuilder<LoyaltyInstagramId> 
     */
    open class func getLoyaltyMechanicsProfileInstagramGroupWithRequestBuilder() -> RequestBuilder<LoyaltyInstagramId> {
        let path = "/loyalty/mechanics/profile/instagram/group/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<LoyaltyInstagramId>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Запрос идентификатора группы в социальной сети
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getLoyaltyMechanicsProfileVkGroup(completion: @escaping ((_ data: LoyaltyVkId?,_ error: Error?) -> Void)) {
        getLoyaltyMechanicsProfileVkGroupWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запрос идентификатора группы в социальной сети
     - GET /loyalty/mechanics/profile/vk/group/
     - Запрос идентификатора группы в социальной сети при вступлении в которую будет применяться текущая механика
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example={
  "id" : "id"
}}]

     - returns: RequestBuilder<LoyaltyVkId> 
     */
    open class func getLoyaltyMechanicsProfileVkGroupWithRequestBuilder() -> RequestBuilder<LoyaltyVkId> {
        let path = "/loyalty/mechanics/profile/vk/group/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<LoyaltyVkId>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Запрос истории привязанной карты
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getLoyaltyOasCardHistory(completion: @escaping ((_ data: [String]?,_ error: Error?) -> Void)) {
        getLoyaltyOasCardHistoryWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запрос истории привязанной карты
     - GET /loyalty/oas/card/history/
     - Запрос истории привязанной карты
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example=[ "custom", "custom" ]}]

     - returns: RequestBuilder<[String]> 
     */
    open class func getLoyaltyOasCardHistoryWithRequestBuilder() -> RequestBuilder<[String]> {
        let path = "/loyalty/oas/card/history/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<[String]>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Создание нового бонусного счета клиента
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postLoyaltyCloudloyaltyCardNew(completion: @escaping ((_ data: CloudLoyaltyBalance?,_ error: Error?) -> Void)) {
        postLoyaltyCloudloyaltyCardNewWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Создание нового бонусного счета клиента
     - POST /loyalty/cloudloyalty/card/new/
     - При запросе из профиля пользователя берется подтвержденный телефон (если таковой не имеется то возращается ошибка 404), далее с текущим номером происходит запрос /new-client **Перед запросом обязательно производится проверка существования ранее выпущенной карты по данному идентификатору пользователя или номеру телефона.** 
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example={
  "client" : {
    "birthdate" : "birthdate",
    "gender" : 5.962133916683182377482808078639209270477294921875,
    "cardString" : "cardString",
    "level" : 5.63737665663332876420099637471139430999755859375,
    "externalId" : "externalId",
    "fullName" : "fullName",
    "phoneNumber" : "phoneNumber",
    "surname" : "surname",
    "name" : "name",
    "patronymicName" : "patronymicName",
    "pendingBonuses" : 2.3021358869347654518833223846741020679473876953125,
    "bonuses" : 6.02745618307040320615897144307382404804229736328125,
    "card" : 1.46581298050294517310021547018550336360931396484375,
    "email" : "email"
  },
  "bonuses" : [ {
    "amount" : 0.80082819046101150206595775671303272247314453125,
    "expireAt" : "expireAt"
  }, {
    "amount" : 0.80082819046101150206595775671303272247314453125,
    "expireAt" : "expireAt"
  } ]
}}]

     - returns: RequestBuilder<CloudLoyaltyBalance> 
     */
    open class func postLoyaltyCloudloyaltyCardNewWithRequestBuilder() -> RequestBuilder<CloudLoyaltyBalance> {
        let path = "/loyalty/cloudloyalty/card/new/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<CloudLoyaltyBalance>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Запрос начисления бонусов за привязанную карту лояльности
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postLoyaltyMechanicsCardBinding(completion: @escaping ((_ data: LoyaltyHistory?,_ error: Error?) -> Void)) {
        postLoyaltyMechanicsCardBindingWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запрос начисления бонусов за привязанную карту лояльности
     - POST /loyalty/mechanics/card/binding/
     - Запрос начисления бонусов за привязанную карту лояльности. При запросе производится проверка следующих условий: * К аккаунту x-uid привязана карта лояльности * Ранее по данной карте не производилось начислений бонусов по данной механике 
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example={
  "balanceChange" : 0.8008282,
  "mechanic" : "custom",
  "time" : 6,
  "message" : "message"
}}]

     - returns: RequestBuilder<LoyaltyHistory> 
     */
    open class func postLoyaltyMechanicsCardBindingWithRequestBuilder() -> RequestBuilder<LoyaltyHistory> {
        let path = "/loyalty/mechanics/card/binding/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<LoyaltyHistory>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Запрос начисления бонусов по приглашению
     
     - parameter invite: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postLoyaltyMechanicsInviteApply(invite: LoyaltyInviteCode, completion: @escaping ((_ data: LoyaltyHistory?,_ error: Error?) -> Void)) {
        postLoyaltyMechanicsInviteApplyWithRequestBuilder(invite: invite).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запрос начисления бонусов по приглашению
     - POST /loyalty/mechanics/invite/apply/
     - Запрос начисления бонусов за привязанную карту лояльности. При запросе производится проверка следующих условий: * К аккаунту x-uid привязана карта лояльности * Ранее по данной карте не производилось начислений бонусов по данной механике Так же бонусы начисляются на карту выпустившую код приглашения 
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example={
  "balanceChange" : 0.8008282,
  "mechanic" : "custom",
  "time" : 6,
  "message" : "message"
}}]
     
     - parameter invite: (body)  

     - returns: RequestBuilder<LoyaltyHistory> 
     */
    open class func postLoyaltyMechanicsInviteApplyWithRequestBuilder(invite: LoyaltyInviteCode) -> RequestBuilder<LoyaltyHistory> {
        let path = "/loyalty/mechanics/invite/apply/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: invite)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<LoyaltyHistory>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Запрос начисления бонусов за первый заказ в приложении
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postLoyaltyMechanicsOrderFirst(completion: @escaping ((_ data: LoyaltyHistory?,_ error: Error?) -> Void)) {
        postLoyaltyMechanicsOrderFirstWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запрос начисления бонусов за первый заказ в приложении
     - POST /loyalty/mechanics/order/first/
     - Запрос начисления бонусов за заполненный профиль. При запросе производится проверка следующих условий: * К аккаунту x-uid привязана карта лояльности * Ранее по данной карте не производилось начислений бонусов по данной механике * У аккаунта x-uid в order есть минимум один заказа в статусе complete 
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example={
  "balanceChange" : 0.8008282,
  "mechanic" : "custom",
  "time" : 6,
  "message" : "message"
}}]

     - returns: RequestBuilder<LoyaltyHistory> 
     */
    open class func postLoyaltyMechanicsOrderFirstWithRequestBuilder() -> RequestBuilder<LoyaltyHistory> {
        let path = "/loyalty/mechanics/order/first/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<LoyaltyHistory>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Запрос начисления бонусов за заполненный профиль
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postLoyaltyMechanicsProfileApply(completion: @escaping ((_ data: LoyaltyHistory?,_ error: Error?) -> Void)) {
        postLoyaltyMechanicsProfileApplyWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запрос начисления бонусов за заполненный профиль
     - POST /loyalty/mechanics/profile/apply/
     - Запрос начисления бонусов за заполненный профиль. При запросе производится проверка следующих условий: * К аккаунту x-uid привязана карта лояльности * Ранее по данной карте не производилось начислений бонусов по данной механике * Заполненны основные поля профиля (добавлено подтвержденное средство связи, заполнены firstName, lastName, birthday, location) 
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example={
  "balanceChange" : 0.8008282,
  "mechanic" : "custom",
  "time" : 6,
  "message" : "message"
}}]

     - returns: RequestBuilder<LoyaltyHistory> 
     */
    open class func postLoyaltyMechanicsProfileApplyWithRequestBuilder() -> RequestBuilder<LoyaltyHistory> {
        let path = "/loyalty/mechanics/profile/apply/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<LoyaltyHistory>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Запрос начисления бонусов за вступление в группу
     
     - parameter invite: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postLoyaltyMechanicsProfileInstagramGroupApply(invite: LoyaltyInstagramId, completion: @escaping ((_ data: LoyaltyHistory?,_ error: Error?) -> Void)) {
        postLoyaltyMechanicsProfileInstagramGroupApplyWithRequestBuilder(invite: invite).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запрос начисления бонусов за вступление в группу
     - POST /loyalty/mechanics/profile/instagram/group/apply/
     - Запрос начисления бонусов за вступление в группу. При запросе производится проверка следующих условий: * К аккаунту x-uid привязана карта лояльности * Ранее по данной карте не производилось начислений бонусов по данной механике * Пользователь с указанным идентификатором социальной сети состоит в группе  **invite содержит в id идентификатор пользователя** 
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example={
  "balanceChange" : 0.8008282,
  "mechanic" : "custom",
  "time" : 6,
  "message" : "message"
}}]
     
     - parameter invite: (body)  

     - returns: RequestBuilder<LoyaltyHistory> 
     */
    open class func postLoyaltyMechanicsProfileInstagramGroupApplyWithRequestBuilder(invite: LoyaltyInstagramId) -> RequestBuilder<LoyaltyHistory> {
        let path = "/loyalty/mechanics/profile/instagram/group/apply/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: invite)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<LoyaltyHistory>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Запрос начисления бонусов за вступление в группу
     
     - parameter invite: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postLoyaltyMechanicsProfileVkGroupApply(invite: LoyaltyVkId, completion: @escaping ((_ data: LoyaltyHistory?,_ error: Error?) -> Void)) {
        postLoyaltyMechanicsProfileVkGroupApplyWithRequestBuilder(invite: invite).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запрос начисления бонусов за вступление в группу
     - POST /loyalty/mechanics/profile/vk/group/apply/
     - Запрос начисления бонусов за вступление в группу. При запросе производится проверка следующих условий: * К аккаунту x-uid привязана карта лояльности * Ранее по данной карте не производилось начислений бонусов по данной механике * Пользователь с указанным идентификатором социальной сети состоит в группе  **invite содержит в id идентификатор пользователя** 
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example={
  "balanceChange" : 0.8008282,
  "mechanic" : "custom",
  "time" : 6,
  "message" : "message"
}}]
     
     - parameter invite: (body)  

     - returns: RequestBuilder<LoyaltyHistory> 
     */
    open class func postLoyaltyMechanicsProfileVkGroupApplyWithRequestBuilder(invite: LoyaltyVkId) -> RequestBuilder<LoyaltyHistory> {
        let path = "/loyalty/mechanics/profile/vk/group/apply/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: invite)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<LoyaltyHistory>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
