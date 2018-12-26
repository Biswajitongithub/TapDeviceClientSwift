// This file has been generated
// Do not edit this file, it may be overwritten
//



class TapRequestHeader {
    var methodType: UInt8!
    var path: Path!
    

    class Path {
        var objectId: UInt16 = 0xFFFF
        var objectInstanceId: UInt16 = 0xFFFF
        var resourceId: UInt16 = 0xFFFF
        
    }
    

    enum MethodType: Int, Codable {
        case GET = 0x1
        case PUT = 0x2
        case POST = 0x3
        
    }
    
}



class TapRequest {
    var header: TapRequestHeader!
    var payload: Bytes!
    

    

    
}



class TapResponse {
    var codeRet: UInt8!
    var data: Bytes!
    

    

    
}



class TapApduRequest {
    var header: Header!
    var request: TapRequest!
    

    class Header {
        var cla: UInt8!
        var ins: UInt8!
        var p1: UInt8!
        var p2: UInt8!
        var lc: UInt8!
        
    }
    

    enum MethodType: Int, Codable {
        case GET = 0xCA
        case PUT_OR_POST = 0xDA
        
    }
    enum Default: Int, Codable {
        case CLA = 0xA2
        
    }
    
}



class ApduResponse {
    var data: Bytes!
    var status: Bytes!
    

    

    
}



class ApduRequest {
    var header: ApduRequestHeader!
    var data: Bytes!
    

    

    
}



class ApduRequestHeader {
    var cla: UInt8!
    var ins: UInt8!
    var p1: UInt8!
    var p2: UInt8!
    var lc: UInt8!
    

    

    
}



class IotizeEncryptedFrame {
    var id: UInt16!
    var len: UInt16!
    var payload: Bytes!
    var crc: UInt32!
    

    

    
}



