//
// InfosystemsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class InfosystemsAPI {
    /**
     Запрос информации об инфосистеме
     
     - parameter infosystemName: (path) Название инфосистемы 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getStaticInfosystembynameByInfosystemname(infosystemName: String, completion: @escaping ((_ data: Infosystem?,_ error: Error?) -> Void)) {
        getStaticInfosystembynameByInfosystemnameWithRequestBuilder(infosystemName: infosystemName).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запрос информации об инфосистеме
     - GET /static/infosystemByName/{infosystemName}/
     - Запрос информации об инфосистеме
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example={
  "import" : true,
  "name" : "name",
  "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91"
}}]
     
     - parameter infosystemName: (path) Название инфосистемы 

     - returns: RequestBuilder<Infosystem> 
     */
    open class func getStaticInfosystembynameByInfosystemnameWithRequestBuilder(infosystemName: String) -> RequestBuilder<Infosystem> {
        var path = "/static/infosystemByName/{infosystemName}/"
        path = path.replacingOccurrences(of: "{infosystemName}", with: "\(infosystemName)", options: .literal, range: nil)
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Infosystem>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Запрос списка информационных систем
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getStaticInfosystems(completion: @escaping ((_ data: [Infosystem]?,_ error: Error?) -> Void)) {
        getStaticInfosystemsWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запрос списка информационных систем
     - GET /static/infosystems/
     - Запрос списка информационных систем
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example=[ {
  "import" : true,
  "name" : "name",
  "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91"
}, {
  "import" : true,
  "name" : "name",
  "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91"
} ]}]

     - returns: RequestBuilder<[Infosystem]> 
     */
    open class func getStaticInfosystemsWithRequestBuilder() -> RequestBuilder<[Infosystem]> {
        let path = "/static/infosystems/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<[Infosystem]>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Запрос информаци об информационной системе
     
     - parameter infosystemId: (path) Идентификатор информационной системы 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getStaticInfosystemsByInfosystemid(infosystemId: String, completion: @escaping ((_ data: Infosystem?,_ error: Error?) -> Void)) {
        getStaticInfosystemsByInfosystemidWithRequestBuilder(infosystemId: infosystemId).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запрос информаци об информационной системе
     - GET /static/infosystems/{infosystemId}/
     - Запрос информации об информационной системе
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example={
  "import" : true,
  "name" : "name",
  "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91"
}}]
     
     - parameter infosystemId: (path) Идентификатор информационной системы 

     - returns: RequestBuilder<Infosystem> 
     */
    open class func getStaticInfosystemsByInfosystemidWithRequestBuilder(infosystemId: String) -> RequestBuilder<Infosystem> {
        var path = "/static/infosystems/{infosystemId}/"
        path = path.replacingOccurrences(of: "{infosystemId}", with: "\(infosystemId)", options: .literal, range: nil)
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Infosystem>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Запрос элемента информационной системы
     
     - parameter infosystemId: (path) Идентификатор информационной системы 
     - parameter itemId: (path) Идентификатор элемента 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getStaticInfosystemsByInfosystemidItemsByItemid(infosystemId: String, itemId: String, completion: @escaping ((_ data: InfoItemWithRelations?,_ error: Error?) -> Void)) {
        getStaticInfosystemsByInfosystemidItemsByItemidWithRequestBuilder(infosystemId: infosystemId, itemId: itemId).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запрос элемента информационной системы
     - GET /static/infosystems/{infosystemId}/items/{itemId}/
     - Запрос элемента информационной системы
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example=""}]
     
     - parameter infosystemId: (path) Идентификатор информационной системы 
     - parameter itemId: (path) Идентификатор элемента 

     - returns: RequestBuilder<InfoItemWithRelations> 
     */
    open class func getStaticInfosystemsByInfosystemidItemsByItemidWithRequestBuilder(infosystemId: String, itemId: String) -> RequestBuilder<InfoItemWithRelations> {
        var path = "/static/infosystems/{infosystemId}/items/{itemId}/"
        path = path.replacingOccurrences(of: "{infosystemId}", with: "\(infosystemId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{itemId}", with: "\(itemId)", options: .literal, range: nil)
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<InfoItemWithRelations>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Запрос списка свойств информационных элементов
     
     - parameter infosystemId: (path) Идентификатор информационной системы 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getStaticInfosystemsByInfosystemidProperties(infosystemId: String, completion: @escaping ((_ data: [IProperty]?,_ error: Error?) -> Void)) {
        getStaticInfosystemsByInfosystemidPropertiesWithRequestBuilder(infosystemId: infosystemId).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запрос списка свойств информационных элементов
     - GET /static/infosystems/{infosystemId}/properties/
     - Запрос списка свойств информационных элементов
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example=[ {
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
} ]}]
     
     - parameter infosystemId: (path) Идентификатор информационной системы 

     - returns: RequestBuilder<[IProperty]> 
     */
    open class func getStaticInfosystemsByInfosystemidPropertiesWithRequestBuilder(infosystemId: String) -> RequestBuilder<[IProperty]> {
        var path = "/static/infosystems/{infosystemId}/properties/"
        path = path.replacingOccurrences(of: "{infosystemId}", with: "\(infosystemId)", options: .literal, range: nil)
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<[IProperty]>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Запрос свойства
     
     - parameter infosystemId: (path) Идентификатор информационной системы 
     - parameter propertyKey: (path) Идентификатор свойства элемента 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getStaticInfosystemsByInfosystemidPropertiesByPropertykey(infosystemId: String, propertyKey: String, completion: @escaping ((_ data: IProperty?,_ error: Error?) -> Void)) {
        getStaticInfosystemsByInfosystemidPropertiesByPropertykeyWithRequestBuilder(infosystemId: infosystemId, propertyKey: propertyKey).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запрос свойства
     - GET /static/infosystems/{infosystemId}/properties/{propertyKey}/
     - Запрос свойства
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example={
  "view" : "vNone",
  "import" : true,
  "extra" : "{}",
  "name" : "name",
  "type" : "ipString",
  "key" : "key"
}}]
     
     - parameter infosystemId: (path) Идентификатор информационной системы 
     - parameter propertyKey: (path) Идентификатор свойства элемента 

     - returns: RequestBuilder<IProperty> 
     */
    open class func getStaticInfosystemsByInfosystemidPropertiesByPropertykeyWithRequestBuilder(infosystemId: String, propertyKey: String) -> RequestBuilder<IProperty> {
        var path = "/static/infosystems/{infosystemId}/properties/{propertyKey}/"
        path = path.replacingOccurrences(of: "{infosystemId}", with: "\(infosystemId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{propertyKey}", with: "\(propertyKey)", options: .literal, range: nil)
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<IProperty>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Запрос списка элементов
     
     - parameter infosystemId: (path) Идентификатор информационной системы 
     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postStaticInfosystemsByInfosystemidQuery(infosystemId: String, body: InfosystemQuery, completion: @escaping ((_ data: [InfoItem]?,_ error: Error?) -> Void)) {
        postStaticInfosystemsByInfosystemidQueryWithRequestBuilder(infosystemId: infosystemId, body: body).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запрос списка элементов
     - POST /static/infosystems/{infosystemId}/query/
     - Запрос списка элементов
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example=[ {
  "image" : "image",
  "creator" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
  "import" : true,
  "updated_at" : 6,
  "name" : "name",
  "created_at" : 0,
  "description" : "description",
  "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
  "body" : "body"
}, {
  "image" : "image",
  "creator" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
  "import" : true,
  "updated_at" : 6,
  "name" : "name",
  "created_at" : 0,
  "description" : "description",
  "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
  "body" : "body"
} ]}]
     
     - parameter infosystemId: (path) Идентификатор информационной системы 
     - parameter body: (body)  

     - returns: RequestBuilder<[InfoItem]> 
     */
    open class func postStaticInfosystemsByInfosystemidQueryWithRequestBuilder(infosystemId: String, body: InfosystemQuery) -> RequestBuilder<[InfoItem]> {
        var path = "/static/infosystems/{infosystemId}/query/"
        path = path.replacingOccurrences(of: "{infosystemId}", with: "\(infosystemId)", options: .literal, range: nil)
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<[InfoItem]>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Запрос списка элементов
     
     - parameter infosystemId: (path) Идентификатор информационной системы 
     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postStaticInfosystemsByInfosystemidQuerywithrelations(infosystemId: String, body: InfosystemQuery, completion: @escaping ((_ data: [InfoItemWithRelations]?,_ error: Error?) -> Void)) {
        postStaticInfosystemsByInfosystemidQuerywithrelationsWithRequestBuilder(infosystemId: infosystemId, body: body).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запрос списка элементов
     - POST /static/infosystems/{infosystemId}/queryWithRelations/
     - Запрос списка элементов
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example=[ "", "" ]}]
     
     - parameter infosystemId: (path) Идентификатор информационной системы 
     - parameter body: (body)  

     - returns: RequestBuilder<[InfoItemWithRelations]> 
     */
    open class func postStaticInfosystemsByInfosystemidQuerywithrelationsWithRequestBuilder(infosystemId: String, body: InfosystemQuery) -> RequestBuilder<[InfoItemWithRelations]> {
        var path = "/static/infosystems/{infosystemId}/queryWithRelations/"
        path = path.replacingOccurrences(of: "{infosystemId}", with: "\(infosystemId)", options: .literal, range: nil)
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<[InfoItemWithRelations]>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Поиск по элементам инфосистем
     
     - parameter infosystemId: (path) Идентификатор информационной системы 
     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postStaticInfosystemsByInfosystemidRequest(infosystemId: String, body: SearchRequest, completion: @escaping ((_ data: InfoItemsResponse?,_ error: Error?) -> Void)) {
        postStaticInfosystemsByInfosystemidRequestWithRequestBuilder(infosystemId: infosystemId, body: body).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Поиск по элементам инфосистем
     - POST /static/infosystems/{infosystemId}/request/
     - Поиск по элементам инфосистем. Минимальное количество символов в тексте для поиска: 3. 
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example={
  "total" : 0,
  "aggregations" : "{}",
  "results" : [ "", "" ]
}}]
     
     - parameter infosystemId: (path) Идентификатор информационной системы 
     - parameter body: (body)  

     - returns: RequestBuilder<InfoItemsResponse> 
     */
    open class func postStaticInfosystemsByInfosystemidRequestWithRequestBuilder(infosystemId: String, body: SearchRequest) -> RequestBuilder<InfoItemsResponse> {
        var path = "/static/infosystems/{infosystemId}/request/"
        path = path.replacingOccurrences(of: "{infosystemId}", with: "\(infosystemId)", options: .literal, range: nil)
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<InfoItemsResponse>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
