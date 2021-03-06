//
// DiscountAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class DiscountAPI {
    /**
     Запрос отвязки привязанной карты
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteDcBinding(completion: @escaping ((_ error: Error?) -> Void)) {
        deleteDcBindingWithRequestBuilder().execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Запрос отвязки привязанной карты
     - DELETE /dc/binding/
     - Запрос отвязки привязанной карты к текущему x-uid запроса
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token

     - returns: RequestBuilder<Void> 
     */
    open class func deleteDcBindingWithRequestBuilder() -> RequestBuilder<Void> {
        let path = "/dc/binding/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Удаление информации по карте
     
     - parameter cardNumber: (path) Номер карты 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteDcCardByCardnumber(cardNumber: String, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteDcCardByCardnumberWithRequestBuilder(cardNumber: cardNumber).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Удаление информации по карте
     - DELETE /dc/card/{cardNumber}/
     - Удаление информации по карте
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     
     - parameter cardNumber: (path) Номер карты 

     - returns: RequestBuilder<Void> 
     */
    open class func deleteDcCardByCardnumberWithRequestBuilder(cardNumber: String) -> RequestBuilder<Void> {
        var path = "/dc/card/{cardNumber}/"
        path = path.replacingOccurrences(of: "{cardNumber}", with: "\(cardNumber)", options: .literal, range: nil)
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Запрос привязанной карты
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDcBinding(completion: @escaping ((_ data: DcCard?,_ error: Error?) -> Void)) {
        getDcBindingWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запрос привязанной карты
     - GET /dc/binding/
     - Запрос привязанной карты к текущему x-uid запроса
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example=""}]

     - returns: RequestBuilder<DcCard> 
     */
    open class func getDcBindingWithRequestBuilder() -> RequestBuilder<DcCard> {
        let path = "/dc/binding/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<DcCard>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Запрос информации покарте (безопасный)
     
     - parameter cardNumber: (path) Номер карты 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDcBindingByCardnumber(cardNumber: String, completion: @escaping ((_ data: DcCardMask?,_ error: Error?) -> Void)) {
        getDcBindingByCardnumberWithRequestBuilder(cardNumber: cardNumber).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запрос информации покарте (безопасный)
     - GET /dc/binding/{cardNumber}/
     - Запрос информации покарте с ограниченым выводом
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example=""}]
     
     - parameter cardNumber: (path) Номер карты 

     - returns: RequestBuilder<DcCardMask> 
     */
    open class func getDcBindingByCardnumberWithRequestBuilder(cardNumber: String) -> RequestBuilder<DcCardMask> {
        var path = "/dc/binding/{cardNumber}/"
        path = path.replacingOccurrences(of: "{cardNumber}", with: "\(cardNumber)", options: .literal, range: nil)
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<DcCardMask>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Запрос списка карта
     
     - parameter limit: (query) Размер выборки (optional, default to 50)
     - parameter offset: (query) Смещение от начала выборки (optional, default to 0)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDcCard(limit: Int64? = nil, offset: Int64? = nil, completion: @escaping ((_ data: [DcCard]?,_ error: Error?) -> Void)) {
        getDcCardWithRequestBuilder(limit: limit, offset: offset).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запрос списка карта
     - GET /dc/card/
     - Запрос списка карта
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example=[ "", "" ]}]
     
     - parameter limit: (query) Размер выборки (optional, default to 50)
     - parameter offset: (query) Смещение от начала выборки (optional, default to 0)

     - returns: RequestBuilder<[DcCard]> 
     */
    open class func getDcCardWithRequestBuilder(limit: Int64? = nil, offset: Int64? = nil) -> RequestBuilder<[DcCard]> {
        let path = "/dc/card/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "limit": limit?.encodeToJSON(), 
            "offset": offset?.encodeToJSON()
        ])
        

        let requestBuilder: RequestBuilder<[DcCard]>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Запрос информации по карте
     
     - parameter cardNumber: (path) Номер карты 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDcCardByCardnumber(cardNumber: String, completion: @escaping ((_ data: DcCard?,_ error: Error?) -> Void)) {
        getDcCardByCardnumberWithRequestBuilder(cardNumber: cardNumber).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запрос информации по карте
     - GET /dc/card/{cardNumber}/
     - Запрос информации по карте
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example=""}]
     
     - parameter cardNumber: (path) Номер карты 

     - returns: RequestBuilder<DcCard> 
     */
    open class func getDcCardByCardnumberWithRequestBuilder(cardNumber: String) -> RequestBuilder<DcCard> {
        var path = "/dc/card/{cardNumber}/"
        path = path.replacingOccurrences(of: "{cardNumber}", with: "\(cardNumber)", options: .literal, range: nil)
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<DcCard>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Подтверждение привязки по номеру карты
     
     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postDcBindingConfirmation(body: DcCardConfirmation, completion: @escaping ((_ error: Error?) -> Void)) {
        postDcBindingConfirmationWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Подтверждение привязки по номеру карты
     - POST /dc/binding/confirmation/
     - Подтверждение привязки карты к пользователю x-uid по номеру карты
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     
     - parameter body: (body)  

     - returns: RequestBuilder<Void> 
     */
    open class func postDcBindingConfirmationWithRequestBuilder(body: DcCardConfirmation) -> RequestBuilder<Void> {
        let path = "/dc/binding/confirmation/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Подтверждение привязки по номеру телефона
     
     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postDcBindingPhoneConfirmation(body: DcCardByPhoneConfirmation, completion: @escaping ((_ error: Error?) -> Void)) {
        postDcBindingPhoneConfirmationWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Подтверждение привязки по номеру телефона
     - POST /dc/binding/phone/confirmation/
     - Подтверждение привязки карты к пользователю x-uid по номеру телефона
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     
     - parameter body: (body)  

     - returns: RequestBuilder<Void> 
     */
    open class func postDcBindingPhoneConfirmationWithRequestBuilder(body: DcCardByPhoneConfirmation) -> RequestBuilder<Void> {
        let path = "/dc/binding/phone/confirmation/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Запрос кода подтверждения по номеру телефона
     
     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postDcBindingPhoneRequest(body: DcBindingByPhoneRequest, completion: @escaping ((_ error: Error?) -> Void)) {
        postDcBindingPhoneRequestWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Запрос кода подтверждения по номеру телефона
     - POST /dc/binding/phone/request/
     - Запрос кода подтверждения для привязки карты по номеру телефона
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     
     - parameter body: (body)  

     - returns: RequestBuilder<Void> 
     */
    open class func postDcBindingPhoneRequestWithRequestBuilder(body: DcBindingByPhoneRequest) -> RequestBuilder<Void> {
        let path = "/dc/binding/phone/request/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Запрос кода подтверждения по номеру карты
     
     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postDcBindingRequest(body: DcBindingRequest, completion: @escaping ((_ error: Error?) -> Void)) {
        postDcBindingRequestWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Запрос кода подтверждения по номеру карты
     - POST /dc/binding/request/
     - Запрос кода подтверждения для привязки по номеру карты
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     
     - parameter body: (body)  

     - returns: RequestBuilder<Void> 
     */
    open class func postDcBindingRequestWithRequestBuilder(body: DcBindingRequest) -> RequestBuilder<Void> {
        let path = "/dc/binding/request/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Создание информации по карте
     
     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postDcCard(body: DcCard, completion: @escaping ((_ data: DcCard?,_ error: Error?) -> Void)) {
        postDcCardWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Создание информации по карте
     - POST /dc/card/
     - Создание информации по карте
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example=""}]
     
     - parameter body: (body)  

     - returns: RequestBuilder<DcCard> 
     */
    open class func postDcCardWithRequestBuilder(body: DcCard) -> RequestBuilder<DcCard> {
        let path = "/dc/card/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<DcCard>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Обновление информации по карте
     
     - parameter cardNumber: (path) Номер карты 
     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postDcCardByCardnumber(cardNumber: String, body: DcCard, completion: @escaping ((_ data: DcCard?,_ error: Error?) -> Void)) {
        postDcCardByCardnumberWithRequestBuilder(cardNumber: cardNumber, body: body).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Обновление информации по карте
     - POST /dc/card/{cardNumber}/
     - Обновление информации по карте
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example=""}]
     
     - parameter cardNumber: (path) Номер карты 
     - parameter body: (body)  

     - returns: RequestBuilder<DcCard> 
     */
    open class func postDcCardByCardnumberWithRequestBuilder(cardNumber: String, body: DcCard) -> RequestBuilder<DcCard> {
        var path = "/dc/card/{cardNumber}/"
        path = path.replacingOccurrences(of: "{cardNumber}", with: "\(cardNumber)", options: .literal, range: nil)
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<DcCard>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Массовый импорт карт
     
     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postDcCardImport(body: [DcCard], completion: @escaping ((_ data: DcCardImportResponse?,_ error: Error?) -> Void)) {
        postDcCardImportWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Массовый импорт карт
     - POST /dc/card/import/
     - Массовый импорт карт
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example={
  "created" : [ "", "" ],
  "updated" : [ "", "" ],
  "errors" : [ "", "" ]
}}]
     
     - parameter body: (body)  

     - returns: RequestBuilder<DcCardImportResponse> 
     */
    open class func postDcCardImportWithRequestBuilder(body: [DcCard]) -> RequestBuilder<DcCardImportResponse> {
        let path = "/dc/card/import/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<DcCardImportResponse>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Простая агрегация
     
     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postDcCardSearch(body: DcAggregationReq, completion: @escaping ((_ data: DcAggregationResp?,_ error: Error?) -> Void)) {
        postDcCardSearchWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Простая агрегация
     - POST /dc/card/search/
     - Простая агрегация по привязанным картам. Нужна для сервиса Millstream Pusher, работает крайне медленно, но это пока не критично.
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example={
  "count" : 0,
  "items" : [ "", "" ]
}}]
     
     - parameter body: (body)  

     - returns: RequestBuilder<DcAggregationResp> 
     */
    open class func postDcCardSearchWithRequestBuilder(body: DcAggregationReq) -> RequestBuilder<DcAggregationResp> {
        let path = "/dc/card/search/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<DcAggregationResp>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
