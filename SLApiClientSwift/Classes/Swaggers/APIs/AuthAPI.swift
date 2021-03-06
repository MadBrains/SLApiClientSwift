//
// AuthAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class AuthAPI {
    /**
     Удаление пользователей из Users и Router API
     
     - parameter userId: (path) Идентификатор пользователя 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteAuthUserByUserid(userId: String, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteAuthUserByUseridWithRequestBuilder(userId: userId).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Удаление пользователей из Users и Router API
     - DELETE /auth/user/{userId}/
     - Удаление профиля пользователя из сервисов Users API и Router API
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     
     - parameter userId: (path) Идентификатор пользователя 

     - returns: RequestBuilder<Void> 
     */
    open class func deleteAuthUserByUseridWithRequestBuilder(userId: String) -> RequestBuilder<Void> {
        var path = "/auth/user/{userId}/"
        path = path.replacingOccurrences(of: "{userId}", with: "\(userId)", options: .literal, range: nil)
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Пакетное добавление пользователей
     
     - parameter file: (form) Содержимое документа 
     - parameter settings: (form) Текстовое описание столбцов в файле, подробное описание указанно в шапке спецификации. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postAuthBatchUseradd(file: URL, settings: String, completion: @escaping ((_ data: BatchUserQuery?,_ error: Error?) -> Void)) {
        postAuthBatchUseraddWithRequestBuilder(file: file, settings: settings).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Пакетное добавление пользователей
     - POST /auth/batch/useradd/
     - Позволяет массово добавить новых пользователей в систему. При пакетном добавлении пользователей в систему текст должен быть предствален в виде json структуры следующего вида: ```JSON { \"groups\": [\"users\", \"moderators\"], \"columns\": { \"email\": 0, \"phone\": 1, \"login\": 2, \"firstName\": 3, \"middleName\": 4, \"lastName\": 5, \"profilePicture\": 6, \"birthday\": 7, \"country\":8, \"region\": 9, \"city\": 10, \"area\": 11, \"street\": 12, \"house\": 13, \"block\": 14 \"apartment\": 15 }   } ``` * В элементе _groups_ необходимо перечислить имена групп в которые будут добавляться пользователи. Если этот элемент не указан или содержит пустой список, то пользователи будут добавлены в группу **Users**. * В элементе _columns_ необходимо перечислить сопоставление столбцов в файле (столбцы нумеруются с 0), с именами свойств. Следует учесть что хотя бы одно из свойств **email**, **phone** или **login** должно быть обязательно задано. Все остальные свойства - не обязательны. 
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example={
  "existingUsers" : [ "", "" ],
  "errors" : [ {
    "line" : 0,
    "property" : "property",
    "desc" : "desc"
  }, {
    "line" : 0,
    "property" : "property",
    "desc" : "desc"
  } ],
  "status" : "Ok"
}}]
     
     - parameter file: (form) Содержимое документа 
     - parameter settings: (form) Текстовое описание столбцов в файле, подробное описание указанно в шапке спецификации. 

     - returns: RequestBuilder<BatchUserQuery> 
     */
    open class func postAuthBatchUseraddWithRequestBuilder(file: URL, settings: String) -> RequestBuilder<BatchUserQuery> {
        let path = "/auth/batch/useradd/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let formParams: [String:Any?] = [
            "file": file,
            "settings": settings
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<BatchUserQuery>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Пакетное обновление пользователей
     
     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postAuthBatchUserupdate(body: RequestBatchUpdateUser, completion: @escaping ((_ data: [ResponseBatchUpdateModel]?,_ error: Error?) -> Void)) {
        postAuthBatchUserupdateWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Пакетное обновление пользователей
     - POST /auth/batch/userupdate/
     - Позволяет обновить информацию всех пользователей, добавленных пакетным методом.
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example=[ {
  "data" : "",
  "error" : "error",
  "status" : "Ok"
}, {
  "data" : "",
  "error" : "error",
  "status" : "Ok"
} ]}]
     
     - parameter body: (body)  

     - returns: RequestBuilder<[ResponseBatchUpdateModel]> 
     */
    open class func postAuthBatchUserupdateWithRequestBuilder(body: RequestBatchUpdateUser) -> RequestBuilder<[ResponseBatchUpdateModel]> {
        let path = "/auth/batch/userupdate/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<[ResponseBatchUpdateModel]>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Проверка средства связи
     
     - parameter body: (body) Данные для подтверждения 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postAuthCheckCommunication(body: VerifyQuery, completion: @escaping ((_ data: ErrorModel?,_ error: Error?) -> Void)) {
        postAuthCheckCommunicationWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Проверка средства связи
     - POST /auth/check/communication/
     - Осуществляет запрос на проверку средства связи (телефонны номер или email). 
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example={
  "code" : 140,
  "message" : "{}"
}}]
     
     - parameter body: (body) Данные для подтверждения 

     - returns: RequestBuilder<ErrorModel> 
     */
    open class func postAuthCheckCommunicationWithRequestBuilder(body: VerifyQuery) -> RequestBuilder<ErrorModel> {
        let path = "/auth/check/communication/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ErrorModel>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Создание пользователей с инвайтом
     
     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postAuthInvite(body: InviteQuery, completion: @escaping ((_ data: SignupResponse?,_ error: Error?) -> Void)) {
        postAuthInviteWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Создание пользователей с инвайтом
     - POST /auth/invite/
     - Позволяет создать новых пользователей в системе с приглашением по инвайту на email.
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example={
  "uid" : "uid",
  "cid" : "cid"
}}]
     
     - parameter body: (body)  

     - returns: RequestBuilder<SignupResponse> 
     */
    open class func postAuthInviteWithRequestBuilder(body: InviteQuery) -> RequestBuilder<SignupResponse> {
        let path = "/auth/invite/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<SignupResponse>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Запрос на восстановления пароля
     
     - parameter body: (body) Данные для восстановления 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postAuthRecoveryPassword(body: VerifyQuery, completion: @escaping ((_ data: ErrorModel?,_ error: Error?) -> Void)) {
        postAuthRecoveryPasswordWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запрос на восстановления пароля
     - POST /auth/recovery/password/
     - Функция позволяет осуществить процедуру восстановления пароля
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - examples: [{contentType=application/json, example={
  "code" : 140,
  "message" : "{}"
}}]
     
     - parameter body: (body) Данные для восстановления 

     - returns: RequestBuilder<ErrorModel> 
     */
    open class func postAuthRecoveryPasswordWithRequestBuilder(body: VerifyQuery) -> RequestBuilder<ErrorModel> {
        let path = "/auth/recovery/password/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ErrorModel>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Подтверждение кода авторизации при восстановлении пароля
     
     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postAuthRecoveryPasswordConfirmation(body: ConfirmationQuery, completion: @escaping ((_ data: Signin?,_ error: Error?) -> Void)) {
        postAuthRecoveryPasswordConfirmationWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Подтверждение кода авторизации при восстановлении пароля
     - POST /auth/recovery/password/confirmation/
     - Подтверждение кода авторизации при восстановлении пароля
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example={
  "x-token" : "x-token",
  "x-cid" : "x-cid",
  "x-uid" : "x-uid"
}}]
     
     - parameter body: (body)  

     - returns: RequestBuilder<Signin> 
     */
    open class func postAuthRecoveryPasswordConfirmationWithRequestBuilder(body: ConfirmationQuery) -> RequestBuilder<Signin> {
        let path = "/auth/recovery/password/confirmation/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Signin>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Запросить код авторизации
     
     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postAuthSigninCode(body: CodeQuery, completion: @escaping ((_ data: ErrorModel?,_ error: Error?) -> Void)) {
        postAuthSigninCodeWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запросить код авторизации
     - POST /auth/signin/code/
     - Запрос кода авторизации. Если пользователь не найден, то происходит автоматическая регистрация.
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - examples: [{contentType=application/json, example={
  "code" : 140,
  "message" : "{}"
}}]
     
     - parameter body: (body)  

     - returns: RequestBuilder<ErrorModel> 
     */
    open class func postAuthSigninCodeWithRequestBuilder(body: CodeQuery) -> RequestBuilder<ErrorModel> {
        let path = "/auth/signin/code/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ErrorModel>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Подтверждение кода авторизации
     
     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postAuthSigninCodeConfirmation(body: ConfirmationQuery, completion: @escaping ((_ data: Signin?,_ error: Error?) -> Void)) {
        postAuthSigninCodeConfirmationWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Подтверждение кода авторизации
     - POST /auth/signin/code/confirmation/
     - Запрос позволяет осуществить подтверждение кода авторизации
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example={
  "x-token" : "x-token",
  "x-cid" : "x-cid",
  "x-uid" : "x-uid"
}}]
     
     - parameter body: (body)  

     - returns: RequestBuilder<Signin> 
     */
    open class func postAuthSigninCodeConfirmationWithRequestBuilder(body: ConfirmationQuery) -> RequestBuilder<Signin> {
        let path = "/auth/signin/code/confirmation/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Signin>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Парольная авторизация
     
     - parameter body: (body) Данные для авторизации 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postAuthSigninPassword(body: PasswordQuery, completion: @escaping ((_ data: Signin?,_ error: Error?) -> Void)) {
        postAuthSigninPasswordWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Парольная авторизация
     - POST /auth/signin/password/
     - Позволяет авторизоваться пользователю в системе. Доступны значения в зависимости от настроек login, email, phone. Email; Phone - только числа, от 11 символов и более, другие символы недопустимы; Login - Логин более 2-х символов. Первый символ - буква. 
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - examples: [{contentType=application/json, example={
  "x-token" : "x-token",
  "x-cid" : "x-cid",
  "x-uid" : "x-uid"
}}]
     
     - parameter body: (body) Данные для авторизации 

     - returns: RequestBuilder<Signin> 
     */
    open class func postAuthSigninPasswordWithRequestBuilder(body: PasswordQuery) -> RequestBuilder<Signin> {
        let path = "/auth/signin/password/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Signin>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Авторизация через соц сеть
     
     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postAuthSigninSocial(body: SocialQuery, completion: @escaping ((_ data: Signin?,_ error: Error?) -> Void)) {
        postAuthSigninSocialWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Авторизация через соц сеть
     - POST /auth/signin/social/
     - Позволяет осуществить авторизацию через привязанную к системе социальную сеть. Если пользователь не найден, происходит автоматическая регистрация.
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - examples: [{contentType=application/json, example={
  "x-token" : "x-token",
  "x-cid" : "x-cid",
  "x-uid" : "x-uid"
}}]
     
     - parameter body: (body)  

     - returns: RequestBuilder<Signin> 
     */
    open class func postAuthSigninSocialWithRequestBuilder(body: SocialQuery) -> RequestBuilder<Signin> {
        let path = "/auth/signin/social/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Signin>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Регистрация по паролю
     
     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postAuthSignupPassword(body: SignupQuery, completion: @escaping ((_ data: SignupResponse?,_ error: Error?) -> Void)) {
        postAuthSignupPasswordWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Регистрация по паролю
     - POST /auth/signup/password/
     - Регистрация по паролю. Если регистрация происходит по email, то для авторизации требуется выполнить запрос /signin/code/confirmation/
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - examples: [{contentType=application/json, example={
  "uid" : "uid",
  "cid" : "cid"
}}]
     
     - parameter body: (body)  

     - returns: RequestBuilder<SignupResponse> 
     */
    open class func postAuthSignupPasswordWithRequestBuilder(body: SignupQuery) -> RequestBuilder<SignupResponse> {
        let path = "/auth/signup/password/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<SignupResponse>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Подтверждение средства связи
     
     - parameter body: (body) Данные для подтверждения 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postAuthVerifyCommunication(body: VerifyCheckQuery, completion: @escaping ((_ data: ErrorModel?,_ error: Error?) -> Void)) {
        postAuthVerifyCommunicationWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Подтверждение средства связи
     - POST /auth/verify/communication/
     - Запрос на подтверждение средства связи (телефонный номер или email).
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example={
  "code" : 140,
  "message" : "{}"
}}]
     
     - parameter body: (body) Данные для подтверждения 

     - returns: RequestBuilder<ErrorModel> 
     */
    open class func postAuthVerifyCommunicationWithRequestBuilder(body: VerifyCheckQuery) -> RequestBuilder<ErrorModel> {
        let path = "/auth/verify/communication/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ErrorModel>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
