//
// DocumentsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class DocumentsAPI {
    /**
     Запрос списка объектов корневой группы
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getStaticDocuments(completion: @escaping ((_ data: DocumentResponse?,_ error: Error?) -> Void)) {
        getStaticDocumentsWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запрос списка объектов корневой группы
     - GET /static/documents/
     - Получить список объектов корневой группы
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example={
  "documents" : [ {
    "parent" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "creator" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "import" : true,
    "updated_at" : 6,
    "name" : "name",
    "created_at" : 0,
    "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "type" : "text_plain"
  }, {
    "parent" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "creator" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "import" : true,
    "updated_at" : 6,
    "name" : "name",
    "created_at" : 0,
    "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "type" : "text_plain"
  } ],
  "groups" : [ {
    "parent" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "import" : true,
    "name" : "name",
    "weight" : 1,
    "defaultTemplateId" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91"
  }, {
    "parent" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "import" : true,
    "name" : "name",
    "weight" : 1,
    "defaultTemplateId" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91"
  } ],
  "group" : {
    "parent" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "import" : true,
    "name" : "name",
    "weight" : 1,
    "defaultTemplateId" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91"
  }
}}]

     - returns: RequestBuilder<DocumentResponse> 
     */
    open class func getStaticDocumentsWithRequestBuilder() -> RequestBuilder<DocumentResponse> {
        let path = "/static/documents/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<DocumentResponse>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Запрос объектов корневой группы
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getStaticDocumentsGroup(completion: @escaping ((_ data: DocumentResponse?,_ error: Error?) -> Void)) {
        getStaticDocumentsGroupWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запрос объектов корневой группы
     - GET /static/documents/group/
     - Получить список объектов корневой группы
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example={
  "documents" : [ {
    "parent" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "creator" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "import" : true,
    "updated_at" : 6,
    "name" : "name",
    "created_at" : 0,
    "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "type" : "text_plain"
  }, {
    "parent" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "creator" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "import" : true,
    "updated_at" : 6,
    "name" : "name",
    "created_at" : 0,
    "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "type" : "text_plain"
  } ],
  "groups" : [ {
    "parent" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "import" : true,
    "name" : "name",
    "weight" : 1,
    "defaultTemplateId" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91"
  }, {
    "parent" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "import" : true,
    "name" : "name",
    "weight" : 1,
    "defaultTemplateId" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91"
  } ],
  "group" : {
    "parent" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "import" : true,
    "name" : "name",
    "weight" : 1,
    "defaultTemplateId" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91"
  }
}}]

     - returns: RequestBuilder<DocumentResponse> 
     */
    open class func getStaticDocumentsGroupWithRequestBuilder() -> RequestBuilder<DocumentResponse> {
        let path = "/static/documents/group/"
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<DocumentResponse>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Запрос объектов по ID группы
     
     - parameter groupId: (path) Идентификатор группы 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getStaticDocumentsGroupByGroupid(groupId: String, completion: @escaping ((_ data: DocumentResponse?,_ error: Error?) -> Void)) {
        getStaticDocumentsGroupByGroupidWithRequestBuilder(groupId: groupId).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запрос объектов по ID группы
     - GET /static/documents/group/{groupId}/
     - Получить список объектов указанной группы по ID
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example={
  "documents" : [ {
    "parent" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "creator" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "import" : true,
    "updated_at" : 6,
    "name" : "name",
    "created_at" : 0,
    "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "type" : "text_plain"
  }, {
    "parent" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "creator" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "import" : true,
    "updated_at" : 6,
    "name" : "name",
    "created_at" : 0,
    "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "type" : "text_plain"
  } ],
  "groups" : [ {
    "parent" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "import" : true,
    "name" : "name",
    "weight" : 1,
    "defaultTemplateId" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91"
  }, {
    "parent" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "import" : true,
    "name" : "name",
    "weight" : 1,
    "defaultTemplateId" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91"
  } ],
  "group" : {
    "parent" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "import" : true,
    "name" : "name",
    "weight" : 1,
    "defaultTemplateId" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91"
  }
}}]
     
     - parameter groupId: (path) Идентификатор группы 

     - returns: RequestBuilder<DocumentResponse> 
     */
    open class func getStaticDocumentsGroupByGroupidWithRequestBuilder(groupId: String) -> RequestBuilder<DocumentResponse> {
        var path = "/static/documents/group/{groupId}/"
        path = path.replacingOccurrences(of: "{groupId}", with: "\(groupId)", options: .literal, range: nil)
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<DocumentResponse>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Запрос информации о документе
     
     - parameter documentId: (path) Идентификатор документа 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getStaticDocumentsItemsByDocumentid(documentId: String, completion: @escaping ((_ data: Document?,_ error: Error?) -> Void)) {
        getStaticDocumentsItemsByDocumentidWithRequestBuilder(documentId: documentId).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запрос информации о документе
     - GET /static/documents/items/{documentId}/
     - Запрос информации о документе
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example={
  "parent" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
  "creator" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
  "import" : true,
  "updated_at" : 6,
  "name" : "name",
  "created_at" : 0,
  "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
  "type" : "text_plain"
}}]
     
     - parameter documentId: (path) Идентификатор документа 

     - returns: RequestBuilder<Document> 
     */
    open class func getStaticDocumentsItemsByDocumentidWithRequestBuilder(documentId: String) -> RequestBuilder<Document> {
        var path = "/static/documents/items/{documentId}/"
        path = path.replacingOccurrences(of: "{documentId}", with: "\(documentId)", options: .literal, range: nil)
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Document>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Запрос содержания документа
     
     - parameter documentId: (path) Идентификатор документа 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getStaticDocumentsItemsByDocumentidBody(documentId: String, completion: @escaping ((_ data: URL?,_ error: Error?) -> Void)) {
        getStaticDocumentsItemsByDocumentidBodyWithRequestBuilder(documentId: documentId).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запрос содержания документа
     - GET /static/documents/items/{documentId}/body/
     - Запрос содержания документа
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example=""}]
     
     - parameter documentId: (path) Идентификатор документа 

     - returns: RequestBuilder<URL> 
     */
    open class func getStaticDocumentsItemsByDocumentidBodyWithRequestBuilder(documentId: String) -> RequestBuilder<URL> {
        var path = "/static/documents/items/{documentId}/body/"
        path = path.replacingOccurrences(of: "{documentId}", with: "\(documentId)", options: .literal, range: nil)
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<URL>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Запрос содержания документа
     
     - parameter documentId: (path) Идентификатор документа 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getStaticDocumentsItemsByDocumentidBodyasstring(documentId: String, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        getStaticDocumentsItemsByDocumentidBodyasstringWithRequestBuilder(documentId: documentId).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запрос содержания документа
     - GET /static/documents/items/{documentId}/bodyAsString/
     - Запрос содержания документа
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example=""}]
     
     - parameter documentId: (path) Идентификатор документа 

     - returns: RequestBuilder<String> 
     */
    open class func getStaticDocumentsItemsByDocumentidBodyasstringWithRequestBuilder(documentId: String) -> RequestBuilder<String> {
        var path = "/static/documents/items/{documentId}/bodyAsString/"
        path = path.replacingOccurrences(of: "{documentId}", with: "\(documentId)", options: .literal, range: nil)
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<String>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Запрос информации о документе
     
     - parameter documentName: (path) Название документа 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getStaticDocumentsItemsbynameByDocumentname(documentName: String, completion: @escaping ((_ data: Document?,_ error: Error?) -> Void)) {
        getStaticDocumentsItemsbynameByDocumentnameWithRequestBuilder(documentName: documentName).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запрос информации о документе
     - GET /static/documents/itemsByName/{documentName}/
     - Запрос информации о документе
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example={
  "parent" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
  "creator" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
  "import" : true,
  "updated_at" : 6,
  "name" : "name",
  "created_at" : 0,
  "id" : "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
  "type" : "text_plain"
}}]
     
     - parameter documentName: (path) Название документа 

     - returns: RequestBuilder<Document> 
     */
    open class func getStaticDocumentsItemsbynameByDocumentnameWithRequestBuilder(documentName: String) -> RequestBuilder<Document> {
        var path = "/static/documents/itemsByName/{documentName}/"
        path = path.replacingOccurrences(of: "{documentName}", with: "\(documentName)", options: .literal, range: nil)
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Document>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Запрос содержания документа
     
     - parameter documentName: (path) Название документа 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getStaticDocumentsItemsbynameByDocumentnameBody(documentName: String, completion: @escaping ((_ data: URL?,_ error: Error?) -> Void)) {
        getStaticDocumentsItemsbynameByDocumentnameBodyWithRequestBuilder(documentName: documentName).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запрос содержания документа
     - GET /static/documents/itemsByName/{documentName}/body/
     - Запрос содержания документа
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example=""}]
     
     - parameter documentName: (path) Название документа 

     - returns: RequestBuilder<URL> 
     */
    open class func getStaticDocumentsItemsbynameByDocumentnameBodyWithRequestBuilder(documentName: String) -> RequestBuilder<URL> {
        var path = "/static/documents/itemsByName/{documentName}/body/"
        path = path.replacingOccurrences(of: "{documentName}", with: "\(documentName)", options: .literal, range: nil)
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<URL>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Запрос содержания документа
     
     - parameter documentName: (path) Название документа 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getStaticDocumentsItemsbynameByDocumentnameBodyasstring(documentName: String, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        getStaticDocumentsItemsbynameByDocumentnameBodyasstringWithRequestBuilder(documentName: documentName).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Запрос содержания документа
     - GET /static/documents/itemsByName/{documentName}/bodyAsString/
     - Запрос содержания документа
     - API Key:
       - type: apiKey x-cid 
       - name: x-cid
     - API Key:
       - type: apiKey x-token 
       - name: x-token
     - examples: [{contentType=application/json, example=""}]
     
     - parameter documentName: (path) Название документа 

     - returns: RequestBuilder<String> 
     */
    open class func getStaticDocumentsItemsbynameByDocumentnameBodyasstringWithRequestBuilder(documentName: String) -> RequestBuilder<String> {
        var path = "/static/documents/itemsByName/{documentName}/bodyAsString/"
        path = path.replacingOccurrences(of: "{documentName}", with: "\(documentName)", options: .literal, range: nil)
        let URLString = SLApiClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<String>.Type = SLApiClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}