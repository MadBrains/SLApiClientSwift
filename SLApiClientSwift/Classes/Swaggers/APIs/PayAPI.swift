//
// PayAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class PayAPI {
    /**
     Деактивация связки
     
     - parameter bindingId: (path) Идентификатор связки 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deletePaySberbankBindingByBindingid(bindingId: String, completion: @escaping ((_ error: Error?) -> Void)) {
        deletePaySberbankBindingByBindingidWithRequestBuilder(bindingId: bindingId).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Деактивация связки
     - DELETE /pay/sberbank/binding/{bindingId}/
     - Деактивация связки
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     
     - parameter bindingId: (path) Идентификатор связки 

     - returns: RequestBuilder<Void> 
     */
    open class func deletePaySberbankBindingByBindingidWithRequestBuilder(bindingId: String) -> RequestBuilder<Void> {
        var path = "/pay/sberbank/binding/{bindingId}/"
        path = path.replacingOccurrences(of: "{bindingId}", with: "\(bindingId)", options: .literal, range: nil)
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Проверка доступности оплат
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPayCheck(completion: @escaping ((_ data: ErrorModel?,_ error: Error?) -> Void)) {
        getPayCheckWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Проверка доступности оплат
     - GET /pay/check/
     - Маршрут на проверку доступности сервиса оплат для определенной компании
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

     - returns: RequestBuilder<ErrorModel> 
     */
    open class func getPayCheckWithRequestBuilder() -> RequestBuilder<ErrorModel> {
        let path = "/pay/check/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ErrorModel>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Список связок
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPaySberbankBinding(completion: @escaping ((_ data: [PayBinding]?,_ error: Error?) -> Void)) {
        getPaySberbankBindingWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Список связок
     - GET /pay/sberbank/binding/
     - Список связок текущего клиента
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example=[ {
  "expiryDate" : "expiryDate",
  "maskedPan" : "maskedPan",
  "bindingId" : "bindingId"
}, {
  "expiryDate" : "expiryDate",
  "maskedPan" : "maskedPan",
  "bindingId" : "bindingId"
} ]}]

     - returns: RequestBuilder<[PayBinding]> 
     */
    open class func getPaySberbankBindingWithRequestBuilder() -> RequestBuilder<[PayBinding]> {
        let path = "/pay/sberbank/binding/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<[PayBinding]>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Cтатуса платежа
     
     - parameter paymentId: (path) Идентификатор платежа 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPaySberbankPaymentByPaymentid(paymentId: String, completion: @escaping ((_ data: PaymentStatus?,_ error: Error?) -> Void)) {
        getPaySberbankPaymentByPaymentidWithRequestBuilder(paymentId: paymentId).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Cтатуса платежа
     - GET /pay/sberbank/payment/{paymentId}/
     - Запрос статуса платежа
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example={
  "date" : "date",
  "amount" : 0,
  "state" : "CREATED"
}}]
     
     - parameter paymentId: (path) Идентификатор платежа 

     - returns: RequestBuilder<PaymentStatus> 
     */
    open class func getPaySberbankPaymentByPaymentidWithRequestBuilder(paymentId: String) -> RequestBuilder<PaymentStatus> {
        var path = "/pay/sberbank/payment/{paymentId}/"
        path = path.replacingOccurrences(of: "{paymentId}", with: "\(paymentId)", options: .literal, range: nil)
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<PaymentStatus>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Регистрация заказа
     
     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postPaySberbankRegister(body: PayRegisterSberbankRequest, completion: @escaping ((_ data: PayRegisterSberbankResponse?,_ error: Error?) -> Void)) {
        postPaySberbankRegisterWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Регистрация заказа
     - POST /pay/sberbank/register/
     - Запрос регистрации заказа
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example={
  "formUrl" : "formUrl",
  "paymentId" : "paymentId"
}}]
     
     - parameter body: (body)  

     - returns: RequestBuilder<PayRegisterSberbankResponse> 
     */
    open class func postPaySberbankRegisterWithRequestBuilder(body: PayRegisterSberbankRequest) -> RequestBuilder<PayRegisterSberbankResponse> {
        let path = "/pay/sberbank/register/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<PayRegisterSberbankResponse>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Регистрация платежа Apple Pay
     
     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postPaySberbankRegisterApple(body: ApplePayRegisterRequest, completion: @escaping ((_ data: PaymentResponse?,_ error: Error?) -> Void)) {
        postPaySberbankRegisterAppleWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Регистрация платежа Apple Pay
     - POST /pay/sberbank/register/apple/
     - Запрос регистрации платежа Apple Pay
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example={
  "orderId" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
  "success" : true
}}]
     
     - parameter body: (body)  

     - returns: RequestBuilder<PaymentResponse> 
     */
    open class func postPaySberbankRegisterAppleWithRequestBuilder(body: ApplePayRegisterRequest) -> RequestBuilder<PaymentResponse> {
        let path = "/pay/sberbank/register/apple/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<PaymentResponse>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Регистрация платежа Google Pay
     
     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postPaySberbankRegisterGoogle(body: GooglePayRegisterRequest, completion: @escaping ((_ data: PaymentResponse?,_ error: Error?) -> Void)) {
        postPaySberbankRegisterGoogleWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Регистрация платежа Google Pay
     - POST /pay/sberbank/register/google/
     - Запрос регистрации платежа Google Pay
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example={
  "orderId" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
  "success" : true
}}]
     
     - parameter body: (body)  

     - returns: RequestBuilder<PaymentResponse> 
     */
    open class func postPaySberbankRegisterGoogleWithRequestBuilder(body: GooglePayRegisterRequest) -> RequestBuilder<PaymentResponse> {
        let path = "/pay/sberbank/register/google/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<PaymentResponse>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Регистрация платежа Samsung Pay
     
     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postPaySberbankRegisterSamsung(body: SamsungPayRegisterRequest, completion: @escaping ((_ data: PaymentResponse?,_ error: Error?) -> Void)) {
        postPaySberbankRegisterSamsungWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Регистрация платежа Samsung Pay
     - POST /pay/sberbank/register/samsung/
     - Запрос регистрации платежа Samsung Pay
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example={
  "orderId" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
  "success" : true
}}]
     
     - parameter body: (body)  

     - returns: RequestBuilder<PaymentResponse> 
     */
    open class func postPaySberbankRegisterSamsungWithRequestBuilder(body: SamsungPayRegisterRequest) -> RequestBuilder<PaymentResponse> {
        let path = "/pay/sberbank/register/samsung/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<PaymentResponse>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
