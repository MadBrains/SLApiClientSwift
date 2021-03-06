//
// SupportAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class SupportAPI {
    /**
     Список операторов для клиентов (без сердств коммуникации)
     
     - parameter reasonName: (path) Название причины в латиннице 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSupportClientReasonByReasonnameOperator(reasonName: String, completion: @escaping ((_ data: [SupportOperatorShort]?,_ error: Error?) -> Void)) {
        getSupportClientReasonByReasonnameOperatorWithRequestBuilder(reasonName: reasonName).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Список операторов для клиентов (без сердств коммуникации)
     - GET /support/client/reason/{reasonName}/operator/
     - Список операторов для клиентов (без сердств коммуникации)
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example=[ {
  "name" : "name",
  "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
  "properties" : [ "", "" ]
}, {
  "name" : "name",
  "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
  "properties" : [ "", "" ]
} ]}]
     
     - parameter reasonName: (path) Название причины в латиннице 

     - returns: RequestBuilder<[SupportOperatorShort]> 
     */
    open class func getSupportClientReasonByReasonnameOperatorWithRequestBuilder(reasonName: String) -> RequestBuilder<[SupportOperatorShort]> {
        var path = "/support/client/reason/{reasonName}/operator/"
        path = path.replacingOccurrences(of: "{reasonName}", with: "\(reasonName)", options: .literal, range: nil)
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<[SupportOperatorShort]>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Запрос оператора для клиентов  (без сердств коммуникации)
     
     - parameter reasonName: (path) Название причины в латиннице 
     - parameter operatorId: (path) Идентификатор причины 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSupportClientReasonByReasonnameOperatorByOperatorid(reasonName: String, operatorId: String, completion: @escaping ((_ data: SupportOperatorShort?,_ error: Error?) -> Void)) {
        getSupportClientReasonByReasonnameOperatorByOperatoridWithRequestBuilder(reasonName: reasonName, operatorId: operatorId).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запрос оператора для клиентов  (без сердств коммуникации)
     - GET /support/client/reason/{reasonName}/operator/{operatorId}/
     - Запрос оператора для клиентов  (без сердств коммуникации)
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example={
  "name" : "name",
  "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
  "properties" : [ "", "" ]
}}]
     
     - parameter reasonName: (path) Название причины в латиннице 
     - parameter operatorId: (path) Идентификатор причины 

     - returns: RequestBuilder<SupportOperatorShort> 
     */
    open class func getSupportClientReasonByReasonnameOperatorByOperatoridWithRequestBuilder(reasonName: String, operatorId: String) -> RequestBuilder<SupportOperatorShort> {
        var path = "/support/client/reason/{reasonName}/operator/{operatorId}/"
        path = path.replacingOccurrences(of: "{reasonName}", with: "\(reasonName)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{operatorId}", with: "\(operatorId)", options: .literal, range: nil)
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<SupportOperatorShort>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Список причин обращения
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSupportReason(completion: @escaping ((_ data: [SupportReason]?,_ error: Error?) -> Void)) {
        getSupportReasonWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Список причин обращения
     - GET /support/reason/
     - Список причин обращения
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example=[ {
  "name" : "name",
  "title" : "title",
  "properties" : [ {
    "view" : "vNone",
    "import" : true,
    "extra" : "{}",
    "name" : "name",
    "type" : "ipString",
    "key" : "key"
  }, {
    "view" : "vNone",
    "import" : true,
    "extra" : "{}",
    "name" : "name",
    "type" : "ipString",
    "key" : "key"
  } ]
}, {
  "name" : "name",
  "title" : "title",
  "properties" : [ {
    "view" : "vNone",
    "import" : true,
    "extra" : "{}",
    "name" : "name",
    "type" : "ipString",
    "key" : "key"
  }, {
    "view" : "vNone",
    "import" : true,
    "extra" : "{}",
    "name" : "name",
    "type" : "ipString",
    "key" : "key"
  } ]
} ]}]

     - returns: RequestBuilder<[SupportReason]> 
     */
    open class func getSupportReasonWithRequestBuilder() -> RequestBuilder<[SupportReason]> {
        let path = "/support/reason/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<[SupportReason]>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Запрос причины обращения
     
     - parameter reasonName: (path) Название причины в латиннице 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSupportReasonByReasonname(reasonName: String, completion: @escaping ((_ data: SupportReason?,_ error: Error?) -> Void)) {
        getSupportReasonByReasonnameWithRequestBuilder(reasonName: reasonName).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запрос причины обращения
     - GET /support/reason/{reasonName}/
     - Запрос причины обращения
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example={
  "name" : "name",
  "title" : "title",
  "properties" : [ {
    "view" : "vNone",
    "import" : true,
    "extra" : "{}",
    "name" : "name",
    "type" : "ipString",
    "key" : "key"
  }, {
    "view" : "vNone",
    "import" : true,
    "extra" : "{}",
    "name" : "name",
    "type" : "ipString",
    "key" : "key"
  } ]
}}]
     
     - parameter reasonName: (path) Название причины в латиннице 

     - returns: RequestBuilder<SupportReason> 
     */
    open class func getSupportReasonByReasonnameWithRequestBuilder(reasonName: String) -> RequestBuilder<SupportReason> {
        var path = "/support/reason/{reasonName}/"
        path = path.replacingOccurrences(of: "{reasonName}", with: "\(reasonName)", options: .literal, range: nil)
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<SupportReason>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter reasonName: (path) Название причины в латиннице 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSupportReasonByReasonnameFormat(reasonName: String, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        getSupportReasonByReasonnameFormatWithRequestBuilder(reasonName: reasonName).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     - GET /support/reason/{reasonName}/format/
     - Запрос формата
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{output=none}]
     
     - parameter reasonName: (path) Название причины в латиннице 

     - returns: RequestBuilder<String> 
     */
    open class func getSupportReasonByReasonnameFormatWithRequestBuilder(reasonName: String) -> RequestBuilder<String> {
        var path = "/support/reason/{reasonName}/format/"
        path = path.replacingOccurrences(of: "{reasonName}", with: "\(reasonName)", options: .literal, range: nil)
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<String>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Список операторов
     
     - parameter reasonName: (path) Название причины в латиннице 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSupportReasonByReasonnameOperator(reasonName: String, completion: @escaping ((_ data: [SupportOperator]?,_ error: Error?) -> Void)) {
        getSupportReasonByReasonnameOperatorWithRequestBuilder(reasonName: reasonName).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Список операторов
     - GET /support/reason/{reasonName}/operator/
     - Список операторов
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example=[ "", "" ]}]
     
     - parameter reasonName: (path) Название причины в латиннице 

     - returns: RequestBuilder<[SupportOperator]> 
     */
    open class func getSupportReasonByReasonnameOperatorWithRequestBuilder(reasonName: String) -> RequestBuilder<[SupportOperator]> {
        var path = "/support/reason/{reasonName}/operator/"
        path = path.replacingOccurrences(of: "{reasonName}", with: "\(reasonName)", options: .literal, range: nil)
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<[SupportOperator]>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Запрос оператор
     
     - parameter reasonName: (path) Название причины в латиннице 
     - parameter operatorId: (path) Идентификатор причины 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSupportReasonByReasonnameOperatorByOperatorid(reasonName: String, operatorId: String, completion: @escaping ((_ data: SupportOperator?,_ error: Error?) -> Void)) {
        getSupportReasonByReasonnameOperatorByOperatoridWithRequestBuilder(reasonName: reasonName, operatorId: operatorId).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запрос оператор
     - GET /support/reason/{reasonName}/operator/{operatorId}/
     - Запрос оператор
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example=""}]
     
     - parameter reasonName: (path) Название причины в латиннице 
     - parameter operatorId: (path) Идентификатор причины 

     - returns: RequestBuilder<SupportOperator> 
     */
    open class func getSupportReasonByReasonnameOperatorByOperatoridWithRequestBuilder(reasonName: String, operatorId: String) -> RequestBuilder<SupportOperator> {
        var path = "/support/reason/{reasonName}/operator/{operatorId}/"
        path = path.replacingOccurrences(of: "{reasonName}", with: "\(reasonName)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{operatorId}", with: "\(operatorId)", options: .literal, range: nil)
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<SupportOperator>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Запрос обращения
     
     - parameter ticketId: (path) Идентификатор тикета 
     - parameter userId: (path) Идентификатор пользователя 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSupportTicketByUseridByTicketid(ticketId: String, userId: String, completion: @escaping ((_ data: SupportTicket?,_ error: Error?) -> Void)) {
        getSupportTicketByUseridByTicketidWithRequestBuilder(ticketId: ticketId, userId: userId).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запрос обращения
     - GET /support/ticket/{userId}/{ticketId}/
     - Запрос обращения по идентификатору пользователя и идентификатору тикета
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example=""}]
     
     - parameter ticketId: (path) Идентификатор тикета 
     - parameter userId: (path) Идентификатор пользователя 

     - returns: RequestBuilder<SupportTicket> 
     */
    open class func getSupportTicketByUseridByTicketidWithRequestBuilder(ticketId: String, userId: String) -> RequestBuilder<SupportTicket> {
        var path = "/support/ticket/{userId}/{ticketId}/"
        path = path.replacingOccurrences(of: "{ticketId}", with: "\(ticketId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{userId}", with: "\(userId)", options: .literal, range: nil)
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<SupportTicket>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter supportFeedback: (body) Данные обратной связи 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSupportFeedback(supportFeedback: SupportFeedback, completion: @escaping ((_ error: Error?) -> Void)) {
        postSupportFeedbackWithRequestBuilder(supportFeedback: supportFeedback).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     - POST /support/feedback/
     - Отправить отзыв
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     
     - parameter supportFeedback: (body) Данные обратной связи 

     - returns: RequestBuilder<Void> 
     */
    open class func postSupportFeedbackWithRequestBuilder(supportFeedback: SupportFeedback) -> RequestBuilder<Void> {
        let path = "/support/feedback/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: supportFeedback)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**

     - parameter reasonName: (path) Название причины в латиннице 
     - parameter body: (form) Содержимое формата 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSupportReasonByReasonnameFormat(reasonName: String, body: String, completion: @escaping ((_ error: Error?) -> Void)) {
        postSupportReasonByReasonnameFormatWithRequestBuilder(reasonName: reasonName, body: body).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     - POST /support/reason/{reasonName}/format/
     - Запись содержания документа
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     
     - parameter reasonName: (path) Название причины в латиннице 
     - parameter body: (form) Содержимое формата 

     - returns: RequestBuilder<Void> 
     */
    open class func postSupportReasonByReasonnameFormatWithRequestBuilder(reasonName: String, body: String) -> RequestBuilder<Void> {
        var path = "/support/reason/{reasonName}/format/"
        path = path.replacingOccurrences(of: "{reasonName}", with: "\(reasonName)", options: .literal, range: nil)
        let URLString = SLApiClientSwiftAPI.basePath + path
        let formParams: [String:Any?] = [
            "body": body
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Поиск обращений оператора
     
     - parameter query: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSupportTicket(query: SupportTicketQuery, completion: @escaping ((_ data: [SupportTicket]?,_ error: Error?) -> Void)) {
        postSupportTicketWithRequestBuilder(query: query).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Поиск обращений оператора
     - POST /support/ticket/
     - Поиск обращений оператора с доступами ко всем заявкам
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example=[ "", "" ]}]
     
     - parameter query: (body)  

     - returns: RequestBuilder<[SupportTicket]> 
     */
    open class func postSupportTicketWithRequestBuilder(query: SupportTicketQuery) -> RequestBuilder<[SupportTicket]> {
        let path = "/support/ticket/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: query)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<[SupportTicket]>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Поиск обращений пользователя
     
     - parameter userId: (path) Идентификатор пользователя 
     - parameter query: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSupportTicketByUserid(userId: String, query: SupportTicketQuery, completion: @escaping ((_ data: [SupportTicket]?,_ error: Error?) -> Void)) {
        postSupportTicketByUseridWithRequestBuilder(userId: userId, query: query).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Поиск обращений пользователя
     - POST /support/ticket/{userId}/
     - Поиск обращений пользователя. Поиск осуществляется только по обращениям пользователя
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example=[ "", "" ]}]
     
     - parameter userId: (path) Идентификатор пользователя 
     - parameter query: (body)  

     - returns: RequestBuilder<[SupportTicket]> 
     */
    open class func postSupportTicketByUseridWithRequestBuilder(userId: String, query: SupportTicketQuery) -> RequestBuilder<[SupportTicket]> {
        var path = "/support/ticket/{userId}/"
        path = path.replacingOccurrences(of: "{userId}", with: "\(userId)", options: .literal, range: nil)
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: query)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<[SupportTicket]>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Обновление обращения
     
     - parameter ticketId: (path) Идентификатор тикета 
     - parameter userId: (path) Идентификатор пользователя 
     - parameter ticket: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSupportTicketByUseridByTicketid(ticketId: String, userId: String, ticket: SupportTicket, completion: @escaping ((_ data: SupportTicket?,_ error: Error?) -> Void)) {
        postSupportTicketByUseridByTicketidWithRequestBuilder(ticketId: ticketId, userId: userId, ticket: ticket).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Обновление обращения
     - POST /support/ticket/{userId}/{ticketId}/
     - Обновление обращенияпо идентификатору пользователя и идентификатору тикета
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example=""}]
     
     - parameter ticketId: (path) Идентификатор тикета 
     - parameter userId: (path) Идентификатор пользователя 
     - parameter ticket: (body)  

     - returns: RequestBuilder<SupportTicket> 
     */
    open class func postSupportTicketByUseridByTicketidWithRequestBuilder(ticketId: String, userId: String, ticket: SupportTicket) -> RequestBuilder<SupportTicket> {
        var path = "/support/ticket/{userId}/{ticketId}/"
        path = path.replacingOccurrences(of: "{ticketId}", with: "\(ticketId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{userId}", with: "\(userId)", options: .literal, range: nil)
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: ticket)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<SupportTicket>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Создание обращения пользователя
     
     - parameter userId: (path) Идентификатор пользователя 
     - parameter ticket: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putSupportTicketByUserid(userId: String, ticket: SupportTicket, completion: @escaping ((_ data: SupportTicket?,_ error: Error?) -> Void)) {
        putSupportTicketByUseridWithRequestBuilder(userId: userId, ticket: ticket).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Создание обращения пользователя
     - PUT /support/ticket/{userId}/
     - Создание обращения пользователя. userId берется из пути а не тела запроса
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example=""}]
     
     - parameter userId: (path) Идентификатор пользователя 
     - parameter ticket: (body)  

     - returns: RequestBuilder<SupportTicket> 
     */
    open class func putSupportTicketByUseridWithRequestBuilder(userId: String, ticket: SupportTicket) -> RequestBuilder<SupportTicket> {
        var path = "/support/ticket/{userId}/"
        path = path.replacingOccurrences(of: "{userId}", with: "\(userId)", options: .literal, range: nil)
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: ticket)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<SupportTicket>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
