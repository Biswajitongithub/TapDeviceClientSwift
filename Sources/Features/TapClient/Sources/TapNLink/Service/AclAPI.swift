//
// AclAPI.swift
//
// Generated by iotize device api codegen
//

import Foundation
import TapClientApi
// 



open class AclAPI {

    var client: TapClient
    var converterProvider: ConverterProvider

    init(client: TapClient, converterProvider: ConverterProvider){
        self.client = client
        self.converterProvider = converterProvider
    }

    /**
    * Get ACL object instance id
    * 
    * LWM2M path: /2/{objectId}/1

    * @param objectId input
    * @return UInt16 api call
    */
    public func getInstanceIdRequest(
        objectId: UInt8
    ) -> ApiRequest<Void>{
        var path = "/2/{objectId}/1"
        //var regex = "\{([\S]*)\}"
        
        path = path.replacingOccurrences(of: "{"+"objectId"+"}", with: String(objectId))
        

        return ApiRequest(
            method: TapRequestHeader.MethodType.GET
            , path: path
            
        )
    }

     /**
        * Get ACL object instance id
        * 
        * LWM2M path: /2/{objectId}/1
        
        * @param objectId input
        * @return UInt16 api call
        */
        public func getInstanceId(
            objectId: UInt8
        ) throws -> ApiResponse<UInt16>{
            let request : ApiRequest<Void> = self.getInstanceIdRequest(objectId: objectId)
            let converter: TapConverterContainer<UInt16> = self.converterProvider.get(id: "integer_uint16")
            let response: ApiResponse<UInt16> = try self.client.execute(request: request, converter: converter)

            return response
        }
    /**
    * Get ACL list
    * Ressource contenant les droits d&#39;un groupe sur cet objet : * ressource instance ID &#x3D; Short Server ID du groupe
    * LWM2M path: /2/{objectId}/2

    * @param objectId input
    * @return ListAclEntry api call
    */
    public func getListRequest(
        objectId: UInt8
    ) -> ApiRequest<Void>{
        var path = "/2/{objectId}/2"
        //var regex = "\{([\S]*)\}"
        
        path = path.replacingOccurrences(of: "{"+"objectId"+"}", with: String(objectId))
        

        return ApiRequest(
            method: TapRequestHeader.MethodType.GET
            , path: path
            
        )
    }

     /**
        * Get ACL list
        * Ressource contenant les droits d&#39;un groupe sur cet objet : * ressource instance ID &#x3D; Short Server ID du groupe
        * LWM2M path: /2/{objectId}/2
        
        * @param objectId input
        * @return ListAclEntry api call
        */
        public func getList(
            objectId: UInt8
        ) throws -> ApiResponse<ListAclEntry>{
            let request : ApiRequest<Void> = self.getListRequest(objectId: objectId)
            let converter: TapConverterContainer<ListAclEntry> = self.converterProvider.get(id: "ListAclEntry")
            let response: ApiResponse<ListAclEntry> = try self.client.execute(request: request, converter: converter)

            return response
        }
    /**
    * Get acl object id
    * 
    * LWM2M path: /2/{objectId}/0

    * @param objectId input
    * @return UInt16 api call
    */
    public func getObjectIdRequest(
        objectId: UInt8
    ) -> ApiRequest<Void>{
        var path = "/2/{objectId}/0"
        //var regex = "\{([\S]*)\}"
        
        path = path.replacingOccurrences(of: "{"+"objectId"+"}", with: String(objectId))
        

        return ApiRequest(
            method: TapRequestHeader.MethodType.GET
            , path: path
            
        )
    }

     /**
        * Get acl object id
        * 
        * LWM2M path: /2/{objectId}/0
        
        * @param objectId input
        * @return UInt16 api call
        */
        public func getObjectId(
            objectId: UInt8
        ) throws -> ApiResponse<UInt16>{
            let request : ApiRequest<Void> = self.getObjectIdRequest(objectId: objectId)
            let converter: TapConverterContainer<UInt16> = self.converterProvider.get(id: "integer_uint16")
            let response: ApiResponse<UInt16> = try self.client.execute(request: request, converter: converter)

            return response
        }
    /**
    * Get ACL group owner id
    * 
    * LWM2M path: /2/{objectId}/3

    * @param objectId input
    * @return UInt16 api call
    */
    public func getOwnerRequest(
        objectId: UInt8
    ) -> ApiRequest<Void>{
        var path = "/2/{objectId}/3"
        //var regex = "\{([\S]*)\}"
        
        path = path.replacingOccurrences(of: "{"+"objectId"+"}", with: String(objectId))
        

        return ApiRequest(
            method: TapRequestHeader.MethodType.GET
            , path: path
            
        )
    }

     /**
        * Get ACL group owner id
        * 
        * LWM2M path: /2/{objectId}/3
        
        * @param objectId input
        * @return UInt16 api call
        */
        public func getOwner(
            objectId: UInt8
        ) throws -> ApiResponse<UInt16>{
            let request : ApiRequest<Void> = self.getOwnerRequest(objectId: objectId)
            let converter: TapConverterContainer<UInt16> = self.converterProvider.get(id: "integer_uint16")
            let response: ApiResponse<UInt16> = try self.client.execute(request: request, converter: converter)

            return response
        }
    /**
    * Write ACL
    * 
    * LWM2M path: /2/{objectId}/2

    * @param objectId input
    * @return  api call
    */
    public func putListRequest(
        objectId: UInt8
    ) -> ApiRequest<Void>{
        var path = "/2/{objectId}/2"
        //var regex = "\{([\S]*)\}"
        
        path = path.replacingOccurrences(of: "{"+"objectId"+"}", with: String(objectId))
        

        return ApiRequest(
            method: TapRequestHeader.MethodType.PUT
            , path: path
            
        )
    }

     /**
        * Write ACL
        * 
        * LWM2M path: /2/{objectId}/2
        
        * @param objectId input
        * @return  api call
        */
        public func putList(
            objectId: UInt8
        ) throws -> ApiResponse<Void>{
            let request : ApiRequest<Void> = self.putListRequest(objectId: objectId)
            
            let response: ApiResponse<Void> = try self.client.execute(request: request)

            return response
        }
    /**
    * Set access control owner group
    * 
    * LWM2M path: /2/{objectId}/3
    * Body converter id: "integer_uint32"

    * @param objectId input

    * @param ownerId input
    * @return  api call
    */
    public func putOwnerRequest(
        objectId: UInt8, ownerId: UInt32
    ) -> ApiRequest<UInt32>{
        var path = "/2/{objectId}/3"
        //var regex = "\{([\S]*)\}"
        
        path = path.replacingOccurrences(of: "{"+"objectId"+"}", with: String(objectId))
        

        return ApiRequest(
            method: TapRequestHeader.MethodType.PUT
            , path: path
            
            , body: ownerId
            , bodyEncoder: self.converterProvider.get(id: "integer_uint32")
        )
    }

     /**
        * Set access control owner group
        * 
        * LWM2M path: /2/{objectId}/3
        * Body converter id: "integer_uint32"
    
        * @param objectId input

        * @param ownerId input
        * @return  api call
        */
        public func putOwner(
            objectId: UInt8, ownerId: UInt32
        ) throws -> ApiResponse<Void>{
            let request : ApiRequest<UInt32> = self.putOwnerRequest(objectId: objectId, ownerId: ownerId)
            
            let response: ApiResponse<Void> = try self.client.execute(request: request)

            return response
        }

}