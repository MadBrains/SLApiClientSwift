//
// CatalogsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class CatalogsAPI {
    /**
     Удалить свойство
     
     - parameter propertyKey: (path) Идентификатор свойства элемента 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteStaticCatalogPropertiesByPropertykey(propertyKey: String, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteStaticCatalogPropertiesByPropertykeyWithRequestBuilder(propertyKey: propertyKey).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Удалить свойство
     - DELETE /static/catalog/properties/{propertyKey}/
     - Удаление свойства
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     
     - parameter propertyKey: (path) Идентификатор свойства элемента 

     - returns: RequestBuilder<Void> 
     */
    open class func deleteStaticCatalogPropertiesByPropertykeyWithRequestBuilder(propertyKey: String) -> RequestBuilder<Void> {
        var path = "/static/catalog/properties/{propertyKey}/"
        path = path.replacingOccurrences(of: "{propertyKey}", with: "\(propertyKey)", options: .literal, range: nil)
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Запрос списка корневых групп
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getStaticCatalogGroups(completion: @escaping ((_ data: [GroupWithRelations]?,_ error: Error?) -> Void)) {
        getStaticCatalogGroupsWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запрос списка корневых групп
     - GET /static/catalog/groups/
     - Список корневых групп
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example=[ "", "" ]}]

     - returns: RequestBuilder<[GroupWithRelations]> 
     */
    open class func getStaticCatalogGroupsWithRequestBuilder() -> RequestBuilder<[GroupWithRelations]> {
        let path = "/static/catalog/groups/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<[GroupWithRelations]>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Получить список объектов указанной группы
     
     - parameter groupId: (path) Идентификатор группы 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getStaticCatalogGroupsByGroupid(groupId: String, completion: @escaping ((_ data: [GroupWithRelations]?,_ error: Error?) -> Void)) {
        getStaticCatalogGroupsByGroupidWithRequestBuilder(groupId: groupId).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Получить список объектов указанной группы
     - GET /static/catalog/groups/{groupId}/
     - Получить список объектов указанной группы по идентификатору группы
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example=[ "", "" ]}]
     
     - parameter groupId: (path) Идентификатор группы 

     - returns: RequestBuilder<[GroupWithRelations]> 
     */
    open class func getStaticCatalogGroupsByGroupidWithRequestBuilder(groupId: String) -> RequestBuilder<[GroupWithRelations]> {
        var path = "/static/catalog/groups/{groupId}/"
        path = path.replacingOccurrences(of: "{groupId}", with: "\(groupId)", options: .literal, range: nil)
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<[GroupWithRelations]>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Получить список свойств объектов группы
     
     - parameter groupId: (path) Идентификатор группы 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getStaticCatalogGroupsByGroupidProperties(groupId: String, completion: @escaping ((_ data: [IProperty]?,_ error: Error?) -> Void)) {
        getStaticCatalogGroupsByGroupidPropertiesWithRequestBuilder(groupId: groupId).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Получить список свойств объектов группы
     - GET /static/catalog/groups/{groupId}/properties/
     - Получить список свойств объектов группы (отражение свойства товаров указанных в шаблоне)
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
     
     - parameter groupId: (path) Идентификатор группы 

     - returns: RequestBuilder<[IProperty]> 
     */
    open class func getStaticCatalogGroupsByGroupidPropertiesWithRequestBuilder(groupId: String) -> RequestBuilder<[IProperty]> {
        var path = "/static/catalog/groups/{groupId}/properties/"
        path = path.replacingOccurrences(of: "{groupId}", with: "\(groupId)", options: .literal, range: nil)
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<[IProperty]>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Запросить список свойств группы
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getStaticCatalogGroupsProperties(completion: @escaping ((_ data: [IProperty]?,_ error: Error?) -> Void)) {
        getStaticCatalogGroupsPropertiesWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запросить список свойств группы
     - GET /static/catalog/groups/properties/
     - Запрос списка свойств группы каталога
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
    open class func getStaticCatalogGroupsPropertiesWithRequestBuilder() -> RequestBuilder<[IProperty]> {
        let path = "/static/catalog/groups/properties/"
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
    open class func getStaticCatalogGroupsPropertiesByPropertykey(propertyKey: String, completion: @escaping ((_ data: IProperty?,_ error: Error?) -> Void)) {
        getStaticCatalogGroupsPropertiesByPropertykeyWithRequestBuilder(propertyKey: propertyKey).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запрос свойства группы
     - GET /static/catalog/groups/properties/{propertyKey}/
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
    open class func getStaticCatalogGroupsPropertiesByPropertykeyWithRequestBuilder(propertyKey: String) -> RequestBuilder<IProperty> {
        var path = "/static/catalog/groups/properties/{propertyKey}/"
        path = path.replacingOccurrences(of: "{propertyKey}", with: "\(propertyKey)", options: .literal, range: nil)
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<IProperty>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Запрос информации о товаре по ID
     
     - parameter itemId: (path) Идентификатор элемента 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getStaticCatalogItemsByItemid(itemId: String, completion: @escaping ((_ data: CatalogItemWithRelations?,_ error: Error?) -> Void)) {
        getStaticCatalogItemsByItemidWithRequestBuilder(itemId: itemId).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запрос информации о товаре по ID
     - GET /static/catalog/items/{itemId}/
     - Запрос информации о товаре и его свойствах по идентификатору товара
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example=""}]
     
     - parameter itemId: (path) Идентификатор элемента 

     - returns: RequestBuilder<CatalogItemWithRelations> 
     */
    open class func getStaticCatalogItemsByItemidWithRequestBuilder(itemId: String) -> RequestBuilder<CatalogItemWithRelations> {
        var path = "/static/catalog/items/{itemId}/"
        path = path.replacingOccurrences(of: "{itemId}", with: "\(itemId)", options: .literal, range: nil)
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<CatalogItemWithRelations>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Запрос смежных товаров
     
     - parameter itemId: (path) Идентификатор элемента 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getStaticCatalogItemsByItemidContiguous(itemId: String, completion: @escaping ((_ data: [CatalogItemWithRemains]?,_ error: Error?) -> Void)) {
        getStaticCatalogItemsByItemidContiguousWithRequestBuilder(itemId: itemId).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запрос смежных товаров
     - GET /static/catalog/items/{itemId}/contiguous/
     - Запрос выведет список смежных товаров. Ссылки на смежные товары отображаются в таблице и заполняются вручную
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example=[ "", "" ]}]
     
     - parameter itemId: (path) Идентификатор элемента 

     - returns: RequestBuilder<[CatalogItemWithRemains]> 
     */
    open class func getStaticCatalogItemsByItemidContiguousWithRequestBuilder(itemId: String) -> RequestBuilder<[CatalogItemWithRemains]> {
        var path = "/static/catalog/items/{itemId}/contiguous/"
        path = path.replacingOccurrences(of: "{itemId}", with: "\(itemId)", options: .literal, range: nil)
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<[CatalogItemWithRemains]>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Запросить свойство
     
     - parameter propertyKey: (path) Идентификатор свойства элемента 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getStaticCatalogPropertiesByPropertykey(propertyKey: String, completion: @escaping ((_ data: IProperty?,_ error: Error?) -> Void)) {
        getStaticCatalogPropertiesByPropertykeyWithRequestBuilder(propertyKey: propertyKey).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запросить свойство
     - GET /static/catalog/properties/{propertyKey}/
     - Выводит структуру запрашиваемого свойства по его идентификатору
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
    open class func getStaticCatalogPropertiesByPropertykeyWithRequestBuilder(propertyKey: String) -> RequestBuilder<IProperty> {
        var path = "/static/catalog/properties/{propertyKey}/"
        path = path.replacingOccurrences(of: "{propertyKey}", with: "\(propertyKey)", options: .literal, range: nil)
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<IProperty>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Запросить список шаблонов
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getStaticCatalogTemplates(completion: @escaping ((_ data: [Template]?,_ error: Error?) -> Void)) {
        getStaticCatalogTemplatesWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запросить список шаблонов
     - GET /static/catalog/templates/
     -  По запросу отображаются все существующие шаблоны для компании
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

     - returns: RequestBuilder<[Template]> 
     */
    open class func getStaticCatalogTemplatesWithRequestBuilder() -> RequestBuilder<[Template]> {
        let path = "/static/catalog/templates/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<[Template]>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Запросить шаблон
     
     - parameter templateId: (path) Идентификатор шаблона свойств 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getStaticCatalogTemplatesByTemplateid(templateId: String, completion: @escaping ((_ data: TemplateWithRelations?,_ error: Error?) -> Void)) {
        getStaticCatalogTemplatesByTemplateidWithRequestBuilder(templateId: templateId).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запросить шаблон
     - GET /static/catalog/templates/{templateId}/
     - Выводит структуру запрошенного шаблона
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example=""}]
     
     - parameter templateId: (path) Идентификатор шаблона свойств 

     - returns: RequestBuilder<TemplateWithRelations> 
     */
    open class func getStaticCatalogTemplatesByTemplateidWithRequestBuilder(templateId: String) -> RequestBuilder<TemplateWithRelations> {
        var path = "/static/catalog/templates/{templateId}/"
        path = path.replacingOccurrences(of: "{templateId}", with: "\(templateId)", options: .literal, range: nil)
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<TemplateWithRelations>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Поиск с фильтрацией
     
     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postStaticCatalogCount(body: BaseQuery, completion: @escaping ((_ data: CountQueryResponse?,_ error: Error?) -> Void)) {
        postStaticCatalogCountWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Поиск с фильтрацией
     - POST /static/catalog/count/
     - Количество записей, соответствующих критериям поиска
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example={
  "count" : 0
}}]
     
     - parameter body: (body)  

     - returns: RequestBuilder<CountQueryResponse> 
     */
    open class func postStaticCatalogCountWithRequestBuilder(body: BaseQuery) -> RequestBuilder<CountQueryResponse> {
        let path = "/static/catalog/count/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<CountQueryResponse>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Запрос списка групп товара
     
     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postStaticCatalogGroupquery(body: CatalogGroupQuery, completion: @escaping ((_ data: [GroupWithRelations]?,_ error: Error?) -> Void)) {
        postStaticCatalogGroupqueryWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запрос списка групп товара
     - POST /static/catalog/groupQuery/
     - Осуществляет запрос списка всех групп, в котором находится указанный товар
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example=[ "", "" ]}]
     
     - parameter body: (body)  

     - returns: RequestBuilder<[GroupWithRelations]> 
     */
    open class func postStaticCatalogGroupqueryWithRequestBuilder(body: CatalogGroupQuery) -> RequestBuilder<[GroupWithRelations]> {
        let path = "/static/catalog/groupQuery/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<[GroupWithRelations]>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Пакетное создание или обновление товара
     
     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postStaticCatalogItemsBulk(body: Body, completion: @escaping ((_ data: [CatalogItemWithRelations]?,_ error: Error?) -> Void)) {
        postStaticCatalogItemsBulkWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Пакетное создание или обновление товара
     - POST /static/catalog/items/bulk/
     - Метод позволяет осуществить массовый перенос товаров из внешней системы учета (напр. 1С) и обновить текущий список всех товаров в системе
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example=[ "", "" ]}]
     
     - parameter body: (body)  

     - returns: RequestBuilder<[CatalogItemWithRelations]> 
     */
    open class func postStaticCatalogItemsBulkWithRequestBuilder(body: Body) -> RequestBuilder<[CatalogItemWithRelations]> {
        let path = "/static/catalog/items/bulk/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<[CatalogItemWithRelations]>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Запрос цены и остатка товара в магазине
     
     - parameter itemId: (path) Идентификатор элемента 
     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postStaticCatalogItemsByItemidShops(itemId: String, body: CatalogItemInShopQuery, completion: @escaping ((_ data: [CatalogItemInShop]?,_ error: Error?) -> Void)) {
        postStaticCatalogItemsByItemidShopsWithRequestBuilder(itemId: itemId, body: body).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запрос цены и остатка товара в магазине
     - POST /static/catalog/items/{itemId}/shops/
     - Запрос остатков и цен по магазинам для товара
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example=[ {
  "badgeColor" : "FFFFFF",
  "catalogItemId" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
  "measure" : "u",
  "price" : 0.14658129805029452,
  "count" : 0.08008281904610115,
  "discountPrice" : 0.6027456183070403,
  "shopId" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
  "badgeText" : "33%"
}, {
  "badgeColor" : "FFFFFF",
  "catalogItemId" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
  "measure" : "u",
  "price" : 0.14658129805029452,
  "count" : 0.08008281904610115,
  "discountPrice" : 0.6027456183070403,
  "shopId" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
  "badgeText" : "33%"
} ]}]
     
     - parameter itemId: (path) Идентификатор элемента 
     - parameter body: (body)  

     - returns: RequestBuilder<[CatalogItemInShop]> 
     */
    open class func postStaticCatalogItemsByItemidShopsWithRequestBuilder(itemId: String, body: CatalogItemInShopQuery) -> RequestBuilder<[CatalogItemInShop]> {
        var path = "/static/catalog/items/{itemId}/shops/"
        path = path.replacingOccurrences(of: "{itemId}", with: "\(itemId)", options: .literal, range: nil)
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<[CatalogItemInShop]>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Запрос списка товаров
     
     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postStaticCatalogItemsforindexer(body: CatalogIndexerQuery, completion: @escaping ((_ data: [CatalogItemWithRemains]?,_ error: Error?) -> Void)) {
        postStaticCatalogItemsforindexerWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запрос списка товаров
     - POST /static/catalog/itemsForIndexer/
     - Запрос осуществляет выгрузку всех товаров из базы данных с применением параметров limit и offset.
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example=[ "", "" ]}]
     
     - parameter body: (body)  

     - returns: RequestBuilder<[CatalogItemWithRemains]> 
     */
    open class func postStaticCatalogItemsforindexerWithRequestBuilder(body: CatalogIndexerQuery) -> RequestBuilder<[CatalogItemWithRemains]> {
        let path = "/static/catalog/itemsForIndexer/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<[CatalogItemWithRemains]>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Запрос цены и остатка товара
     
     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postStaticCatalogItemsshops(body: CatalogItemsInShopsQuery, completion: @escaping ((_ data: [CatalogItemInShop]?,_ error: Error?) -> Void)) {
        postStaticCatalogItemsshopsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запрос цены и остатка товара
     - POST /static/catalog/itemsShops/
     - Запрос позволяет выявить количество остатков конкретного товара в магаизне и узнать его стоимость
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example=[ {
  "badgeColor" : "FFFFFF",
  "catalogItemId" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
  "measure" : "u",
  "price" : 0.14658129805029452,
  "count" : 0.08008281904610115,
  "discountPrice" : 0.6027456183070403,
  "shopId" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
  "badgeText" : "33%"
}, {
  "badgeColor" : "FFFFFF",
  "catalogItemId" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
  "measure" : "u",
  "price" : 0.14658129805029452,
  "count" : 0.08008281904610115,
  "discountPrice" : 0.6027456183070403,
  "shopId" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
  "badgeText" : "33%"
} ]}]
     
     - parameter body: (body)  

     - returns: RequestBuilder<[CatalogItemInShop]> 
     */
    open class func postStaticCatalogItemsshopsWithRequestBuilder(body: CatalogItemsInShopsQuery) -> RequestBuilder<[CatalogItemInShop]> {
        let path = "/static/catalog/itemsShops/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<[CatalogItemInShop]>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Запрос списка товаров
     
     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postStaticCatalogQuery(body: CatalogQuery, completion: @escaping ((_ data: [CatalogItem]?,_ error: Error?) -> Void)) {
        postStaticCatalogQueryWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запрос списка товаров
     - POST /static/catalog/query/
     - Запрос осуществляет выгрузку всех товаров из базы данных с применением параметров limit и offset.
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example=[ {
  "badgeColor" : "FFFFFF",
  "image" : "image",
  "creator" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
  "extraItem" : false,
  "aliases" : [ "aliases", "aliases" ],
  "hidden" : false,
  "import" : true,
  "discountPrice" : 0.6027456183070403,
  "created_at" : 0,
  "description" : "description",
  "body" : "body",
  "templateId" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
  "remoteId" : "remoteId",
  "unit" : 0.5972133916683182,
  "measure" : "u",
  "updated_at" : 5,
  "price" : 0.14658129805029452,
  "name" : "name",
  "detailImages" : [ "detailImages", "detailImages" ],
  "disabled" : false,
  "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
  "badgeText" : "33%",
  "cid" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91"
}, {
  "badgeColor" : "FFFFFF",
  "image" : "image",
  "creator" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
  "extraItem" : false,
  "aliases" : [ "aliases", "aliases" ],
  "hidden" : false,
  "import" : true,
  "discountPrice" : 0.6027456183070403,
  "created_at" : 0,
  "description" : "description",
  "body" : "body",
  "templateId" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
  "remoteId" : "remoteId",
  "unit" : 0.5972133916683182,
  "measure" : "u",
  "updated_at" : 5,
  "price" : 0.14658129805029452,
  "name" : "name",
  "detailImages" : [ "detailImages", "detailImages" ],
  "disabled" : false,
  "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
  "badgeText" : "33%",
  "cid" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91"
} ]}]
     
     - parameter body: (body)  

     - returns: RequestBuilder<[CatalogItem]> 
     */
    open class func postStaticCatalogQueryWithRequestBuilder(body: CatalogQuery) -> RequestBuilder<[CatalogItem]> {
        let path = "/static/catalog/query/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<[CatalogItem]>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Запрос списка товаров
     
     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postStaticCatalogQuerywithrelations(body: CatalogQuery, completion: @escaping ((_ data: [CatalogItemWithRelations]?,_ error: Error?) -> Void)) {
        postStaticCatalogQuerywithrelationsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запрос списка товаров
     - POST /static/catalog/queryWithRelations/
     - Запрос списка товаров
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example=[ "", "" ]}]
     
     - parameter body: (body)  

     - returns: RequestBuilder<[CatalogItemWithRelations]> 
     */
    open class func postStaticCatalogQuerywithrelationsWithRequestBuilder(body: CatalogQuery) -> RequestBuilder<[CatalogItemWithRelations]> {
        let path = "/static/catalog/queryWithRelations/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<[CatalogItemWithRelations]>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Поиск с агрегацией
     
     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postStaticCatalogRequest(body: SearchRequest, completion: @escaping ((_ data: CatalogResponse?,_ error: Error?) -> Void)) {
        postStaticCatalogRequestWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Поиск с агрегацией
     - POST /static/catalog/request/
     - Поиск с возможностью агрегации собираемых данных
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

     - returns: RequestBuilder<CatalogResponse> 
     */
    open class func postStaticCatalogRequestWithRequestBuilder(body: SearchRequest) -> RequestBuilder<CatalogResponse> {
        let path = "/static/catalog/request/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<CatalogResponse>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Запрос списка продуктов
     
     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postStaticCatalogSearch(body: SearchQuery, completion: @escaping ((_ data: [CatalogItemWithRemains]?,_ error: Error?) -> Void)) {
        postStaticCatalogSearchWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запрос списка продуктов
     - POST /static/catalog/search/
     - Запрос списка продуктов
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example=[ "", "" ]}]
     
     - parameter body: (body)  

     - returns: RequestBuilder<[CatalogItemWithRemains]> 
     */
    open class func postStaticCatalogSearchWithRequestBuilder(body: SearchQuery) -> RequestBuilder<[CatalogItemWithRemains]> {
        let path = "/static/catalog/search/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<[CatalogItemWithRemains]>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
