//
// MemoryWriteInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct MemoryWriteInfo: Codable {

    public var address: Double
    /** Number of item */
    public var length: Double
    /** Item size in bytes */
    public var itemSize: Int
    public var value: Bytes

    public init(address: Double, length: Double, itemSize: Int, value: Bytes) {
        self.address = address
        self.length = length
        self.itemSize = itemSize
        self.value = value
    }


}
