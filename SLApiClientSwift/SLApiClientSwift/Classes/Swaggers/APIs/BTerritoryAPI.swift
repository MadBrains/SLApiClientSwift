//
// BTerritoryAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class BTerritoryAPI {
    /**

     - parameter body: (body) Получение информации по ИНН 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postBterritoryInn(body: TbInnRequest, completion: @escaping ((_ data: TbInnResponse?,_ error: Error?) -> Void)) {
        postBterritoryInnWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     - POST /bterritory/inn/
     - Получение информации по ИНН
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - examples: [{contentType=application/json, example={
  "ogrn" : "ogrn",
  "ogrnip" : "ogrnip",
  "companyEmail" : "companyEmail",
  "bik" : "bik",
  "companyPhone" : "companyPhone",
  "correspondentAccount" : "correspondentAccount",
  "companyName" : "companyName",
  "okved" : [ "okved", "okved" ],
  "checkingAccount" : "checkingAccount",
  "inn" : "inn",
  "bankName" : "bankName",
  "kpp" : "kpp"
}}]
     
     - parameter body: (body) Получение информации по ИНН 

     - returns: RequestBuilder<TbInnResponse> 
     */
    open class func postBterritoryInnWithRequestBuilder(body: TbInnRequest) -> RequestBuilder<TbInnResponse> {
        let path = "/bterritory/inn/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<TbInnResponse>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**

     - parameter body: (body) Запрос на восстановление пароля в Территории Бизнеса 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postBterritoryRecoveryPassword(body: TbRecoveryRequest, completion: @escaping ((_ error: Error?) -> Void)) {
        postBterritoryRecoveryPasswordWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     - POST /bterritory/recovery/password/
     - Запрос на восстановление пароля
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     
     - parameter body: (body) Запрос на восстановление пароля в Территории Бизнеса 

     - returns: RequestBuilder<Void> 
     */
    open class func postBterritoryRecoveryPasswordWithRequestBuilder(body: TbRecoveryRequest) -> RequestBuilder<Void> {
        let path = "/bterritory/recovery/password/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Авторизация по email. Email - проверка по регулярному выражению email 
     
     - parameter body: (body) Данные для авторизации 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postBterritorySigninPassword(body: TbSigninRequest, completion: @escaping ((_ data: TbSigninResponse?,_ error: Error?) -> Void)) {
        postBterritorySigninPasswordWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Авторизация по email. Email - проверка по регулярному выражению email 
     - POST /bterritory/signin/password/
     - Парольная авторизация
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - examples: [{contentType=application/json, example={
  "x-token" : "x-token",
  "x-uid" : "x-uid"
}}]
     
     - parameter body: (body) Данные для авторизации 

     - returns: RequestBuilder<TbSigninResponse> 
     */
    open class func postBterritorySigninPasswordWithRequestBuilder(body: TbSigninRequest) -> RequestBuilder<TbSigninResponse> {
        let path = "/bterritory/signin/password/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<TbSigninResponse>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**

     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postBterritorySignupPassword(body: TbSignupRequest, completion: @escaping ((_ data: TbSigninResponse?,_ error: Error?) -> Void)) {
        postBterritorySignupPasswordWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     - POST /bterritory/signup/password/
     - Регистрация по паролю
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - examples: [{contentType=application/json, example={
  "x-token" : "x-token",
  "x-uid" : "x-uid"
}}]
     
     - parameter body: (body)  

     - returns: RequestBuilder<TbSigninResponse> 
     */
    open class func postBterritorySignupPasswordWithRequestBuilder(body: TbSignupRequest) -> RequestBuilder<TbSigninResponse> {
        let path = "/bterritory/signup/password/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<TbSigninResponse>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**

     - parameter body: (body) Получение информации о промежутках времени 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postBterritoryTime(body: TbTimeRequest, completion: @escaping ((_ data: TbTimeResponse?,_ error: Error?) -> Void)) {
        postBterritoryTimeWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     - POST /bterritory/time/
     - Получение информации о промежутках времени
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example={
  "timeInfo" : [ {
    "date" : "date",
    "periods" : [ {
      "closed" : true,
      "time" : "time",
      "value" : [ 0, 0 ]
    }, {
      "closed" : true,
      "time" : "time",
      "value" : [ 0, 0 ]
    } ]
  }, {
    "date" : "date",
    "periods" : [ {
      "closed" : true,
      "time" : "time",
      "value" : [ 0, 0 ]
    }, {
      "closed" : true,
      "time" : "time",
      "value" : [ 0, 0 ]
    } ]
  } ]
}}]
     
     - parameter body: (body) Получение информации о промежутках времени 

     - returns: RequestBuilder<TbTimeResponse> 
     */
    open class func postBterritoryTimeWithRequestBuilder(body: TbTimeRequest) -> RequestBuilder<TbTimeResponse> {
        let path = "/bterritory/time/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<TbTimeResponse>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**

     - parameter userId: (path) Идентификатор пользователя 
     - parameter body: (body) Обновление данных пользователя 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postBterritoryUserByUserid(userId: String, body: TbUserUpdateRequest, completion: @escaping ((_ error: Error?) -> Void)) {
        postBterritoryUserByUseridWithRequestBuilder(userId: userId, body: body).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     - POST /bterritory/user/{userId}/
     - Обновление пользователя в Динамике и на сайте Территории Бизнеса
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     
     - parameter userId: (path) Идентификатор пользователя 
     - parameter body: (body) Обновление данных пользователя 

     - returns: RequestBuilder<Void> 
     */
    open class func postBterritoryUserByUseridWithRequestBuilder(userId: String, body: TbUserUpdateRequest) -> RequestBuilder<Void> {
        var path = "/bterritory/user/{userId}/"
        path = path.replacingOccurrences(of: "{userId}", with: "\(userId)", options: .literal, range: nil)
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
