//
// ShopsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class ShopsAPI {
    /**
     Запрос списка групп и объектов корневой группы
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getStaticShopsGroups(completion: @escaping ((_ data: ShopsResponse?,_ error: Error?) -> Void)) {
        getStaticShopsGroupsWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запрос списка групп и объектов корневой группы
     - GET /static/shops/groups/
     - Запрос списка свойств элементов и объектов в корневой группе магазинов
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example={
  "groups" : [ "", "" ],
  "items" : [ {
    "address" : "address",
    "import" : true,
    "workTimes" : {
      "tu" : {
        "end" : 5,
        "begin" : 1
      },
      "mo" : {
        "end" : 5,
        "begin" : 1
      },
      "su" : {
        "end" : 5,
        "begin" : 1
      },
      "th" : {
        "end" : 5,
        "begin" : 1
      },
      "fr" : {
        "end" : 5,
        "begin" : 1
      },
      "sa" : {
        "end" : 5,
        "begin" : 1
      },
      "we" : {
        "end" : 5,
        "begin" : 1
      }
    },
    "timezone" : "timezone",
    "name" : "name",
    "phones" : [ "phones", "phones" ],
    "location" : {
      "lon" : 36.988422,
      "lat" : -75.58509
    },
    "id" : "id",
    "group" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91"
  }, {
    "address" : "address",
    "import" : true,
    "workTimes" : {
      "tu" : {
        "end" : 5,
        "begin" : 1
      },
      "mo" : {
        "end" : 5,
        "begin" : 1
      },
      "su" : {
        "end" : 5,
        "begin" : 1
      },
      "th" : {
        "end" : 5,
        "begin" : 1
      },
      "fr" : {
        "end" : 5,
        "begin" : 1
      },
      "sa" : {
        "end" : 5,
        "begin" : 1
      },
      "we" : {
        "end" : 5,
        "begin" : 1
      }
    },
    "timezone" : "timezone",
    "name" : "name",
    "phones" : [ "phones", "phones" ],
    "location" : {
      "lon" : 36.988422,
      "lat" : -75.58509
    },
    "id" : "id",
    "group" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91"
  } ]
}}]

     - returns: RequestBuilder<ShopsResponse> 
     */
    open class func getStaticShopsGroupsWithRequestBuilder() -> RequestBuilder<ShopsResponse> {
        let path = "/static/shops/groups/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ShopsResponse>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Получить список объектов указанной группы
     
     - parameter groupId: (path) Идентификатор группы 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getStaticShopsGroupsByGroupid(groupId: String, completion: @escaping ((_ data: ShopsResponse?,_ error: Error?) -> Void)) {
        getStaticShopsGroupsByGroupidWithRequestBuilder(groupId: groupId).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Получить список объектов указанной группы
     - GET /static/shops/groups/{groupId}/
     - Получить список объектов указанной группы
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example={
  "groups" : [ "", "" ],
  "items" : [ {
    "address" : "address",
    "import" : true,
    "workTimes" : {
      "tu" : {
        "end" : 5,
        "begin" : 1
      },
      "mo" : {
        "end" : 5,
        "begin" : 1
      },
      "su" : {
        "end" : 5,
        "begin" : 1
      },
      "th" : {
        "end" : 5,
        "begin" : 1
      },
      "fr" : {
        "end" : 5,
        "begin" : 1
      },
      "sa" : {
        "end" : 5,
        "begin" : 1
      },
      "we" : {
        "end" : 5,
        "begin" : 1
      }
    },
    "timezone" : "timezone",
    "name" : "name",
    "phones" : [ "phones", "phones" ],
    "location" : {
      "lon" : 36.988422,
      "lat" : -75.58509
    },
    "id" : "id",
    "group" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91"
  }, {
    "address" : "address",
    "import" : true,
    "workTimes" : {
      "tu" : {
        "end" : 5,
        "begin" : 1
      },
      "mo" : {
        "end" : 5,
        "begin" : 1
      },
      "su" : {
        "end" : 5,
        "begin" : 1
      },
      "th" : {
        "end" : 5,
        "begin" : 1
      },
      "fr" : {
        "end" : 5,
        "begin" : 1
      },
      "sa" : {
        "end" : 5,
        "begin" : 1
      },
      "we" : {
        "end" : 5,
        "begin" : 1
      }
    },
    "timezone" : "timezone",
    "name" : "name",
    "phones" : [ "phones", "phones" ],
    "location" : {
      "lon" : 36.988422,
      "lat" : -75.58509
    },
    "id" : "id",
    "group" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91"
  } ]
}}]
     
     - parameter groupId: (path) Идентификатор группы 

     - returns: RequestBuilder<ShopsResponse> 
     */
    open class func getStaticShopsGroupsByGroupidWithRequestBuilder(groupId: String) -> RequestBuilder<ShopsResponse> {
        var path = "/static/shops/groups/{groupId}/"
        path = path.replacingOccurrences(of: "{groupId}", with: "\(groupId)", options: .literal, range: nil)
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ShopsResponse>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Запрос списка свойств каждого элемента в группе (у магазинов)
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getStaticShopsGroupsProperties(completion: @escaping ((_ data: [IProperty]?,_ error: Error?) -> Void)) {
        getStaticShopsGroupsPropertiesWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запрос списка свойств каждого элемента в группе (у магазинов)
     - GET /static/shops/groups/properties/
     - Запрос списка свойств групп магазинов
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

     - returns: RequestBuilder<[IProperty]> 
     */
    open class func getStaticShopsGroupsPropertiesWithRequestBuilder() -> RequestBuilder<[IProperty]> {
        let path = "/static/shops/groups/properties/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<[IProperty]>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Запрос свойства группы
     
     - parameter propertyKey: (path) Идентификатор свойства элемента 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getStaticShopsGroupsPropertiesByPropertykey(propertyKey: String, completion: @escaping ((_ data: IProperty?,_ error: Error?) -> Void)) {
        getStaticShopsGroupsPropertiesByPropertykeyWithRequestBuilder(propertyKey: propertyKey).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запрос свойства группы
     - GET /static/shops/groups/properties/{propertyKey}/
     - Запрос свойства группы
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
     
     - parameter propertyKey: (path) Идентификатор свойства элемента 

     - returns: RequestBuilder<IProperty> 
     */
    open class func getStaticShopsGroupsPropertiesByPropertykeyWithRequestBuilder(propertyKey: String) -> RequestBuilder<IProperty> {
        var path = "/static/shops/groups/properties/{propertyKey}/"
        path = path.replacingOccurrences(of: "{propertyKey}", with: "\(propertyKey)", options: .literal, range: nil)
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<IProperty>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Запрос информации о магазине
     
     - parameter itemId: (path) Идентификатор элемента 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getStaticShopsItemsByItemid(itemId: String, completion: @escaping ((_ data: ShopWithRelations?,_ error: Error?) -> Void)) {
        getStaticShopsItemsByItemidWithRequestBuilder(itemId: itemId).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запрос информации о магазине
     - GET /static/shops/items/{itemId}/
     - Запрос информации о магазине
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example=""}]
     
     - parameter itemId: (path) Идентификатор элемента 

     - returns: RequestBuilder<ShopWithRelations> 
     */
    open class func getStaticShopsItemsByItemidWithRequestBuilder(itemId: String) -> RequestBuilder<ShopWithRelations> {
        var path = "/static/shops/items/{itemId}/"
        path = path.replacingOccurrences(of: "{itemId}", with: "\(itemId)", options: .literal, range: nil)
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ShopWithRelations>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Запрос списка свойств магазинов
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getStaticShopsProperties(completion: @escaping ((_ data: [IProperty]?,_ error: Error?) -> Void)) {
        getStaticShopsPropertiesWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запрос списка свойств магазинов
     - GET /static/shops/properties/
     - Запрос списка свойств магазинов
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

     - returns: RequestBuilder<[IProperty]> 
     */
    open class func getStaticShopsPropertiesWithRequestBuilder() -> RequestBuilder<[IProperty]> {
        let path = "/static/shops/properties/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<[IProperty]>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Запрос свойства
     
     - parameter propertyKey: (path) Идентификатор свойства элемента 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getStaticShopsPropertiesByPropertykey(propertyKey: String, completion: @escaping ((_ data: IProperty?,_ error: Error?) -> Void)) {
        getStaticShopsPropertiesByPropertykeyWithRequestBuilder(propertyKey: propertyKey).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запрос свойства
     - GET /static/shops/properties/{propertyKey}/
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
     
     - parameter propertyKey: (path) Идентификатор свойства элемента 

     - returns: RequestBuilder<IProperty> 
     */
    open class func getStaticShopsPropertiesByPropertykeyWithRequestBuilder(propertyKey: String) -> RequestBuilder<IProperty> {
        var path = "/static/shops/properties/{propertyKey}/"
        path = path.replacingOccurrences(of: "{propertyKey}", with: "\(propertyKey)", options: .literal, range: nil)
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<IProperty>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Поиск по магазинам с товарами в наличии
     
     - parameter queryShopsSearch: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postStaticShopsQuery(queryShopsSearch: QueryShopsSearch, completion: @escaping ((_ data: [Shop]?,_ error: Error?) -> Void)) {
        postStaticShopsQueryWithRequestBuilder(queryShopsSearch: queryShopsSearch).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Поиск по магазинам с товарами в наличии
     - POST /static/shops/query/
     - Список магазинов с товарами в наличии
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example=[ {
  "address" : "address",
  "import" : true,
  "workTimes" : {
    "tu" : {
      "end" : 5,
      "begin" : 1
    },
    "mo" : {
      "end" : 5,
      "begin" : 1
    },
    "su" : {
      "end" : 5,
      "begin" : 1
    },
    "th" : {
      "end" : 5,
      "begin" : 1
    },
    "fr" : {
      "end" : 5,
      "begin" : 1
    },
    "sa" : {
      "end" : 5,
      "begin" : 1
    },
    "we" : {
      "end" : 5,
      "begin" : 1
    }
  },
  "timezone" : "timezone",
  "name" : "name",
  "phones" : [ "phones", "phones" ],
  "location" : {
    "lon" : 36.988422,
    "lat" : -75.58509
  },
  "id" : "id",
  "group" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91"
}, {
  "address" : "address",
  "import" : true,
  "workTimes" : {
    "tu" : {
      "end" : 5,
      "begin" : 1
    },
    "mo" : {
      "end" : 5,
      "begin" : 1
    },
    "su" : {
      "end" : 5,
      "begin" : 1
    },
    "th" : {
      "end" : 5,
      "begin" : 1
    },
    "fr" : {
      "end" : 5,
      "begin" : 1
    },
    "sa" : {
      "end" : 5,
      "begin" : 1
    },
    "we" : {
      "end" : 5,
      "begin" : 1
    }
  },
  "timezone" : "timezone",
  "name" : "name",
  "phones" : [ "phones", "phones" ],
  "location" : {
    "lon" : 36.988422,
    "lat" : -75.58509
  },
  "id" : "id",
  "group" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91"
} ]}]
     
     - parameter queryShopsSearch: (body)  

     - returns: RequestBuilder<[Shop]> 
     */
    open class func postStaticShopsQueryWithRequestBuilder(queryShopsSearch: QueryShopsSearch) -> RequestBuilder<[Shop]> {
        let path = "/static/shops/query/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: queryShopsSearch)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<[Shop]>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Поиск по магазинам в наличии которых есть товары с доп свойствами
     
     - parameter queryShopsSearch: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postStaticShopsQuerywithrelations(queryShopsSearch: QueryShopsSearch, completion: @escaping ((_ data: [ShopWithRelations]?,_ error: Error?) -> Void)) {
        postStaticShopsQuerywithrelationsWithRequestBuilder(queryShopsSearch: queryShopsSearch).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Поиск по магазинам в наличии которых есть товары с доп свойствами
     - POST /static/shops/queryWithRelations/
     - Ответ на запрос содержит список магазинов в наличии, которых есть товары с дополнительными свойствами. Дополнительные свойства являются опциональными и могут отсутствовать у некоторых товаров.
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example=[ "", "" ]}]
     
     - parameter queryShopsSearch: (body)  

     - returns: RequestBuilder<[ShopWithRelations]> 
     */
    open class func postStaticShopsQuerywithrelationsWithRequestBuilder(queryShopsSearch: QueryShopsSearch) -> RequestBuilder<[ShopWithRelations]> {
        let path = "/static/shops/queryWithRelations/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: queryShopsSearch)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<[ShopWithRelations]>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Поиск (QueryDSL) с агрегацией собираемых данных
     
     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postStaticShopsRequest(body: SearchRequest, completion: @escaping ((_ data: ShopsSearchResponse?,_ error: Error?) -> Void)) {
        postStaticShopsRequestWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Поиск (QueryDSL) с агрегацией собираемых данных
     - POST /static/shops/request/
     - Поиск (QueryDSL) с возможностью агрегации собираемых данных
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example={
  "count" : 0,
  "aggregations" : "{}",
  "results" : [ "", "" ]
}}]
     
     - parameter body: (body)  

     - returns: RequestBuilder<ShopsSearchResponse> 
     */
    open class func postStaticShopsRequestWithRequestBuilder(body: SearchRequest) -> RequestBuilder<ShopsSearchResponse> {
        let path = "/static/shops/request/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ShopsSearchResponse>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
