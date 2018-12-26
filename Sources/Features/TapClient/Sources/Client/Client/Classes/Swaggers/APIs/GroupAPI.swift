//
// GroupAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class GroupAPI {
    /**
     Get group alias
     
     - parameter groupId: (path) Group id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getAlias(groupId: Int, completion: @escaping ((_ data: Int?,_ error: Error?) -> Void)) {
        getAliasWithRequestBuilder(groupId: groupId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get group alias
     - GET /group/{groupId}/alias
     - ID du groupe dont ce groupe hérite les droits. Si l'Alias correspond à l'ID du groupe, alors c'est un Profile, sinon c'est un User.
     - examples: [{contentType=application/json, example=0}]
     
     - parameter groupId: (path) Group id 

     - returns: RequestBuilder<Int> 
     */
    open class func getAliasWithRequestBuilder(groupId: Int) -> RequestBuilder<Int> {
        var path = "/group/{groupId}/alias"
        let groupIdPreEscape = "\(groupId)"
        let groupIdPostEscape = groupIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{groupId}", with: groupIdPostEscape, options: .literal, range: nil)
        let URLString = ClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Int>.Type = ClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get the name of the group
     
     - parameter groupId: (path) Group id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getName(groupId: Int, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        getNameWithRequestBuilder(groupId: groupId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get the name of the group
     - GET /group/{groupId}/name
     - 
     - examples: [{contentType=application/json, example=""}]
     
     - parameter groupId: (path) Group id 

     - returns: RequestBuilder<String> 
     */
    open class func getNameWithRequestBuilder(groupId: Int) -> RequestBuilder<String> {
        var path = "/group/{groupId}/name"
        let groupIdPreEscape = "\(groupId)"
        let groupIdPostEscape = groupIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{groupId}", with: groupIdPostEscape, options: .literal, range: nil)
        let URLString = ClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = ClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get scram user iteration
     
     - parameter groupId: (path) Group id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getScramUserIteration(groupId: Int, completion: @escaping ((_ data: Int?,_ error: Error?) -> Void)) {
        getScramUserIterationWithRequestBuilder(groupId: groupId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get scram user iteration
     - GET /group/{groupId}/scram-user-iteration
     - SCRAM Hash Iteration: Nombre d'itérations utilisé en SCRAM pour le dernier hashage. Nombre >1000, généré aléatoirement à l'écriture de la conf dans l'IoTize.
     - examples: [{contentType=application/json, example=0}]
     
     - parameter groupId: (path) Group id 

     - returns: RequestBuilder<Int> 
     */
    open class func getScramUserIterationWithRequestBuilder(groupId: Int) -> RequestBuilder<Int> {
        var path = "/group/{groupId}/scram-user-iteration"
        let groupIdPreEscape = "\(groupId)"
        let groupIdPostEscape = groupIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{groupId}", with: groupIdPostEscape, options: .literal, range: nil)
        let URLString = ClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Int>.Type = ClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get scram user salt
     
     - parameter groupId: (path) Group id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getScramUserSalt(groupId: Int, completion: @escaping ((_ data: Int?,_ error: Error?) -> Void)) {
        getScramUserSaltWithRequestBuilder(groupId: groupId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get scram user salt
     - GET /group/{groupId}/scram-user-salt
     - User-specific salt utilisé (avec le User Name) pour saller les hashs du password StoredKey et ServerKey. Ecrit par Exec/SetPWD
     - examples: [{contentType=application/json, example=0}]
     
     - parameter groupId: (path) Group id 

     - returns: RequestBuilder<Int> 
     */
    open class func getScramUserSaltWithRequestBuilder(groupId: Int) -> RequestBuilder<Int> {
        var path = "/group/{groupId}/scram-user-salt"
        let groupIdPreEscape = "\(groupId)"
        let groupIdPostEscape = groupIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{groupId}", with: groupIdPostEscape, options: .literal, range: nil)
        let URLString = ClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Int>.Type = ClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get the maximum session lifetime
     
     - parameter groupId: (path) Group id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSessionLifetime(groupId: Int, completion: @escaping ((_ data: Int?,_ error: Error?) -> Void)) {
        getSessionLifetimeWithRequestBuilder(groupId: groupId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get the maximum session lifetime
     - GET /group/{groupId}/session-lifetime
     - 
     - examples: [{contentType=application/json, example=0}]
     
     - parameter groupId: (path) Group id 

     - returns: RequestBuilder<Int> 
     */
    open class func getSessionLifetimeWithRequestBuilder(groupId: Int) -> RequestBuilder<Int> {
        var path = "/group/{groupId}/session-lifetime"
        let groupIdPreEscape = "\(groupId)"
        let groupIdPostEscape = groupIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{groupId}", with: groupIdPostEscape, options: .literal, range: nil)
        let URLString = ClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Int>.Type = ClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update password
     
     - parameter groupId: (path) Group id 
     - parameter password: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postPassword(groupId: Int, password: String? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        postPasswordWithRequestBuilder(groupId: groupId, password: password).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Update password
     - POST /group/{groupId}/password
     - Demande de modification du Pwd, arguments :* pwd (16 chars) in no security or 1-hash modes.* StoredKey+ServerKey+UserSalt+UserIt (40 uchar) in SCRAM multi-hash mode
     
     - parameter groupId: (path) Group id 
     - parameter password: (query)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func postPasswordWithRequestBuilder(groupId: Int, password: String? = nil) -> RequestBuilder<Void> {
        var path = "/group/{groupId}/password"
        let groupIdPreEscape = "\(groupId)"
        let groupIdPostEscape = groupIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{groupId}", with: groupIdPostEscape, options: .literal, range: nil)
        let URLString = ClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": password
        ])

        let requestBuilder: RequestBuilder<Void>.Type = ClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Write group alias
     
     - parameter groupId: (path) Group id to return 
     - parameter value: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putAlias(groupId: Int, value: Int? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        putAliasWithRequestBuilder(groupId: groupId, value: value).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Write group alias
     - PUT /group/{groupId}/alias
     - 
     
     - parameter groupId: (path) Group id to return 
     - parameter value: (query)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func putAliasWithRequestBuilder(groupId: Int, value: Int? = nil) -> RequestBuilder<Void> {
        var path = "/group/{groupId}/alias"
        let groupIdPreEscape = "\(groupId)"
        let groupIdPostEscape = groupIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{groupId}", with: groupIdPostEscape, options: .literal, range: nil)
        let URLString = ClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "value": value?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<Void>.Type = ClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Write group name
     
     - parameter groupId: (path) Group id to return 
     - parameter name: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putName(groupId: Int, name: String? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        putNameWithRequestBuilder(groupId: groupId, name: name).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Write group name
     - PUT /group/{groupId}/name
     - 
     
     - parameter groupId: (path) Group id to return 
     - parameter name: (query)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func putNameWithRequestBuilder(groupId: Int, name: String? = nil) -> RequestBuilder<Void> {
        var path = "/group/{groupId}/name"
        let groupIdPreEscape = "\(groupId)"
        let groupIdPostEscape = groupIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{groupId}", with: groupIdPostEscape, options: .literal, range: nil)
        let URLString = ClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "name": name
        ])

        let requestBuilder: RequestBuilder<Void>.Type = ClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Write scram user iteration
     
     - parameter groupId: (path) Group id 
     - parameter value: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putScramUserIteration(groupId: Int, value: Int? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        putScramUserIterationWithRequestBuilder(groupId: groupId, value: value).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Write scram user iteration
     - PUT /group/{groupId}/scram-user-iteration
     - 
     
     - parameter groupId: (path) Group id 
     - parameter value: (query)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func putScramUserIterationWithRequestBuilder(groupId: Int, value: Int? = nil) -> RequestBuilder<Void> {
        var path = "/group/{groupId}/scram-user-iteration"
        let groupIdPreEscape = "\(groupId)"
        let groupIdPostEscape = groupIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{groupId}", with: groupIdPostEscape, options: .literal, range: nil)
        let URLString = ClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "value": value?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<Void>.Type = ClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Write scram user salt
     
     - parameter groupId: (path) Group id to return 
     - parameter value: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putScramUserSalt(groupId: Int, value: Int? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        putScramUserSaltWithRequestBuilder(groupId: groupId, value: value).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Write scram user salt
     - PUT /group/{groupId}/scram-user-salt
     - 
     
     - parameter groupId: (path) Group id to return 
     - parameter value: (query)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func putScramUserSaltWithRequestBuilder(groupId: Int, value: Int? = nil) -> RequestBuilder<Void> {
        var path = "/group/{groupId}/scram-user-salt"
        let groupIdPreEscape = "\(groupId)"
        let groupIdPostEscape = groupIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{groupId}", with: groupIdPostEscape, options: .literal, range: nil)
        let URLString = ClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "value": value?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<Void>.Type = ClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Write session lifetime
     
     - parameter groupId: (path) Group id to return 
     - parameter value: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putSessionLifetime(groupId: Int, value: Int? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        putSessionLifetimeWithRequestBuilder(groupId: groupId, value: value).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Write session lifetime
     - PUT /group/{groupId}/session-lifetime
     - 
     
     - parameter groupId: (path) Group id to return 
     - parameter value: (query)  (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func putSessionLifetimeWithRequestBuilder(groupId: Int, value: Int? = nil) -> RequestBuilder<Void> {
        var path = "/group/{groupId}/session-lifetime"
        let groupIdPreEscape = "\(groupId)"
        let groupIdPostEscape = groupIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{groupId}", with: groupIdPostEscape, options: .literal, range: nil)
        let URLString = ClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "value": value?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<Void>.Type = ClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}