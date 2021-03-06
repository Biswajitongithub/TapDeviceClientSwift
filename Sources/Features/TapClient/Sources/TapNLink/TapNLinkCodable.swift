/**
 * This file has been generated
 * DO NOT EDIT DIRECTLY, IT MAY BE OVERWRITE
 */

import TapClientApi

public extension TapStreamReader {



	public func read(_ type: Types.Type) throws -> Types {
        return self.readTypes()
	}

    func readTypes() -> Types {
        let model = Types()
        return model
    }

    


	public func read(_ type: AclEntry.Type) throws -> AclEntry {
        return self.readAclEntry()
	}

    func readAclEntry() -> AclEntry {
        let model = AclEntry()
        self.forwardBits(length: 3)
        model.create = self.readBool()
        model.delete = self.readBool()
        model.execute = self.readBool()
        model.write = self.readBool()
        model.read = self.readBool()
        return model
    }

    


	public func read(_ type: MemoryInfo.Type) throws -> MemoryInfo {
        return self.readMemoryInfo()
	}

    func readMemoryInfo() -> MemoryInfo {
        let model = MemoryInfo()
        model.address = self.readU4()
        model.wordCount = self.readU4()
        model.wordSize = MemoryInfo.WordSizeType(rawValue:self.readU1())

        return model
    }

    


	public func read(_ type: MemoryWriteInfo.Type) throws -> MemoryWriteInfo {
        return self.readMemoryWriteInfo()
	}

    func readMemoryWriteInfo() -> MemoryWriteInfo {
        let model = MemoryWriteInfo()
        model.address = self.readMemoryInfo()
        model.value = self.readBytes()
        return model
    }

    


	public func read(_ type: ReadWriteRights.Type) throws -> ReadWriteRights {
        return self.readReadWriteRights()
	}

    func readReadWriteRights() -> ReadWriteRights {
        let model = ReadWriteRights()
        self.forwardBits(length: 6)
        model.write = self.readBool()
        model.read = self.readBool()
        return model
    }

    


	public func read(_ type: DatalogOption.Type) throws -> DatalogOption {
        return self.readDatalogOption()
	}

    func readDatalogOption() -> DatalogOption {
        let model = DatalogOption()
        self.forwardBits(length: 6)
        model.security = self.readBool()
        model.qos = self.readBool()
        self.forwardBits(length: 5)
        model.logOnChange = self.readBool()
        model.rollingMode = self.readBool()
        model.autorun = self.readBool()
        return model
    }

    


	public func read(_ type: UartSettings.Type) throws -> UartSettings {
        return self.readUartSettings()
	}

    func readUartSettings() -> UartSettings {
        let model = UartSettings()
        model.ctr2 = self.readUartSettingsCtr2()
        model.ctr1 = self.readUartSettingsCtr1()
        return model
    }

    
    func readUartSettingsCtr1() -> UartSettings.Ctr1 {
        let model = UartSettings.Ctr1()
        self.forwardBits(length: 4)
        model.physicalPort = UartSettings.PhysicalPort(rawValue:UInt8(self.readBitsInt(length: 4)))

        model.stopBit = UartSettings.StopBit(rawValue:UInt8(self.readBitsInt(length: 2)))

        model.parity = UartSettings.BitParity(rawValue:UInt8(self.readBitsInt(length: 4)))

        model.dataLength = UInt8(self.readBitsInt(length: 2))
        model.handshakeDelimiter = UartSettings.HandshakeDelimiter(rawValue:UInt8(self.readBitsInt(length: 4)))

        model.handshakeValue = UartSettings.Handshake(rawValue:UInt8(self.readBitsInt(length: 4)))

        model.timeout = self.readU1()
        return model
    }
    
    func readUartSettingsCtr2() -> UartSettings.Ctr2 {
        let model = UartSettings.Ctr2()
        model.slv = self.readU1()
        self.forwardBits(length: 3)
        model.ofs = self.readBool()
        model.baudrate = Int(self.readBitsInt(length: 20))
        return model
    }
    


	public func read(_ type: TapVersion.Type) throws -> TapVersion {
        return self.readTapVersion()
	}

    func readTapVersion() -> TapVersion {
        let model = TapVersion()
        model.major = self.readU1()
        model.minor = self.readU1()
        model.build = self.readU2()
        return model
    }

    


	public func read(_ type: Lwm2mTlv.Type) throws -> Lwm2mTlv {
        return self.readLwm2mTlv()
	}

    func readLwm2mTlv() -> Lwm2mTlv {
        let model = Lwm2mTlv()
        model.identifierType = UInt8(self.readBitsInt(length: 2))
        model.identifierLength = self.readBool()
        model.lengthType = UInt8(self.readBitsInt(length: 2))
        model.other = UInt8(self.readBitsInt(length: 3))
        model.identifier = self.readBytes(length: Int(1))
        model.len = self.readU2()
        model.value = self.readBytes()
        return model
    }

    


	public func read(_ type: InterfaceLock.Type) throws -> InterfaceLock {
        return self.readInterfaceLock()
	}

    func readInterfaceLock() -> InterfaceLock {
        let model = InterfaceLock()
        self.forwardBits(length: 8)
        self.forwardBits(length: 3)
        model.scramActivated = self.readBool()
        model.hashPassword = self.readBool()
        model.factoryReset = self.readBool()
        model.resourceLogUid = self.readBool()
        model.resouceFactory = self.readBool()
        return model
    }

    


	public func read(_ type: LoginCredential.Type) throws -> LoginCredential {
        return self.readLoginCredential()
	}

    func readLoginCredential() -> LoginCredential {
        let model = LoginCredential()
        model.username = self.readStr(length: 16)
        model.password = self.readStr(length: 16)
        return model
    }

    


	public func read(_ type: LoginCredentialHashed.Type) throws -> LoginCredentialHashed {
        return self.readLoginCredentialHashed()
	}

    func readLoginCredentialHashed() -> LoginCredentialHashed {
        let model = LoginCredentialHashed()
        model.username = self.readStr(length: 16)
        model.password = self.readBytes(length: Int(16))
        return model
    }

    


	public func read(_ type: ScramLoginParams.Type) throws -> ScramLoginParams {
        return self.readScramLoginParams()
	}

    func readScramLoginParams() -> ScramLoginParams {
        let model = ScramLoginParams()
        model.username = self.readStr(length: 16)
        model.clientNonce = self.readU4()
        return model
    }

    


	public func read(_ type: ScramLoginResponseBody.Type) throws -> ScramLoginResponseBody {
        return self.readScramLoginResponseBody()
	}

    func readScramLoginResponseBody() -> ScramLoginResponseBody {
        let model = ScramLoginResponseBody()
        model.serverNonce = self.readU4()
        model.salt = self.readBytes(length: Int(4))
        model.iterationNumber = self.readU4()
        return model
    }

    


	public func read(_ type: TargetComStats.Type) throws -> TargetComStats {
        return self.readTargetComStats()
	}

    func readTargetComStats() -> TargetComStats {
        let model = TargetComStats()
        model.nbFailCom = self.readU4()
        model.nbSuccessfulCom = self.readU4()
        return model
    }

    


	public func read(_ type: AvailableFunction.Type) throws -> AvailableFunction {
        return self.readAvailableFunction()
	}

    func readAvailableFunction() -> AvailableFunction {
        let model = AvailableFunction()
        self.forwardBits(length: 6)
        model.debug = self.readBool()
        model.datalog = self.readBool()
        return model
    }

    


	public func read(_ type: CrcCheckBody.Type) throws -> CrcCheckBody {
        return self.readCrcCheckBody()
	}

    func readCrcCheckBody() -> CrcCheckBody {
        let model = CrcCheckBody()
        model.address = self.readU4()
        model.size = self.readU4()
        model.crc = self.readU4()
        return model
    }

    


	public func read(_ type: SinglePacket.Type) throws -> SinglePacket {
        return self.readSinglePacket()
	}

    func readSinglePacket() -> SinglePacket {
        let model = SinglePacket()
        model.sendTime = self.readU4()
        model.packetLength = self.readU2()
        model.packetId = self.readU2()
        model.configVersion = self.readU4()
        model.messageType = SinglePacket.PacketType(rawValue:UInt8(self.readBitsInt(length: 4)))

        self.forwardBits(length: 2)
        model.encryption = self.readBool()
        model.ack = self.readBool()
        model.senderId = self.readU1()
        model.salt = self.readU2()
        model.logTime = self.readU4()
        model.dataSize = self.readU2()
        model.data = self.readBytes(length: Int(Int(model.dataSize)))
        model.padding = self.readBytes(length: Int((4 - (( Int(model.dataSize) + 10) % 4)) % 4))
        model.crc = self.readU4()
        return model
    }

    

}

public extension TapStreamWriter {


    func write(_ model: Types) -> TapStreamWriter{
        return self.writeTypes(model)
    }

    func writeTypes(_ model: Types) -> TapStreamWriter{
        return self
    }

    



    func write(_ model: AclEntry) -> TapStreamWriter{
        return self.writeAclEntry(model)
    }

    func writeAclEntry(_ model: AclEntry) -> TapStreamWriter{
        self.forwardBits(3)

        _ = self.writeBitsInt(model.create!, 1)
        _ = self.writeBitsInt(model.delete!, 1)
        _ = self.writeBitsInt(model.execute!, 1)
        _ = self.writeBitsInt(model.write!, 1)
        _ = self.writeBitsInt(model.read!, 1)
        return self
    }

    



    func write(_ model: MemoryInfo) -> TapStreamWriter{
        return self.writeMemoryInfo(model)
    }

    func writeMemoryInfo(_ model: MemoryInfo) -> TapStreamWriter{
        _ = self.writeU4(model.address!)
        _ = self.writeU4(model.wordCount!)
        _ = self.writeU1(model.wordSize!.rawValue)
        return self
    }

    



    func write(_ model: MemoryWriteInfo) -> TapStreamWriter{
        return self.writeMemoryWriteInfo(model)
    }

    func writeMemoryWriteInfo(_ model: MemoryWriteInfo) -> TapStreamWriter{
        _ = self.writeMemoryInfo(model.address)
        _ = self.writeBytes(model.value!)
        return self
    }

    



    func write(_ model: ReadWriteRights) -> TapStreamWriter{
        return self.writeReadWriteRights(model)
    }

    func writeReadWriteRights(_ model: ReadWriteRights) -> TapStreamWriter{
        self.forwardBits(6)

        _ = self.writeBitsInt(model.write!, 1)
        _ = self.writeBitsInt(model.read!, 1)
        return self
    }

    



    func write(_ model: DatalogOption) -> TapStreamWriter{
        return self.writeDatalogOption(model)
    }

    func writeDatalogOption(_ model: DatalogOption) -> TapStreamWriter{
        self.forwardBits(6)

        _ = self.writeBitsInt(model.security!, 1)
        _ = self.writeBitsInt(model.qos!, 1)
        self.forwardBits(5)

        _ = self.writeBitsInt(model.logOnChange!, 1)
        _ = self.writeBitsInt(model.rollingMode!, 1)
        _ = self.writeBitsInt(model.autorun!, 1)
        return self
    }

    



    func write(_ model: UartSettings) -> TapStreamWriter{
        return self.writeUartSettings(model)
    }

    func writeUartSettings(_ model: UartSettings) -> TapStreamWriter{
        _ = self.writeUartSettingsCtr2(model.ctr2)
        _ = self.writeUartSettingsCtr1(model.ctr1)
        return self
    }

    
    func write(_ model: UartSettings.Ctr1) -> TapStreamWriter{
        return self.writeUartSettingsCtr1(model)
    }

    func writeUartSettingsCtr1(_ model: UartSettings.Ctr1) -> TapStreamWriter{
        self.forwardBits(4)

        _ = self.writeBitsInt(model.physicalPort!.rawValue, 4)
        _ = self.writeBitsInt(model.stopBit!.rawValue, 2)
        _ = self.writeBitsInt(model.parity!.rawValue, 4)
        _ = self.writeBitsInt(model.dataLength!, 2)
        _ = self.writeBitsInt(model.handshakeDelimiter!.rawValue, 4)
        _ = self.writeBitsInt(model.handshakeValue!.rawValue, 4)
        _ = self.writeU1(model.timeout!)
        return self
    }
    
    func write(_ model: UartSettings.Ctr2) -> TapStreamWriter{
        return self.writeUartSettingsCtr2(model)
    }

    func writeUartSettingsCtr2(_ model: UartSettings.Ctr2) -> TapStreamWriter{
        _ = self.writeU1(model.slv!)
        self.forwardBits(3)

        _ = self.writeBitsInt(model.ofs!, 1)
        _ = self.writeBitsInt(model.baudrate!, 20)
        return self
    }
    



    func write(_ model: TapVersion) -> TapStreamWriter{
        return self.writeTapVersion(model)
    }

    func writeTapVersion(_ model: TapVersion) -> TapStreamWriter{
        _ = self.writeU1(model.major!)
        _ = self.writeU1(model.minor!)
        _ = self.writeU2(model.build!)
        return self
    }

    



    func write(_ model: Lwm2mTlv) -> TapStreamWriter{
        return self.writeLwm2mTlv(model)
    }

    func writeLwm2mTlv(_ model: Lwm2mTlv) -> TapStreamWriter{
        _ = self.writeBitsInt(model.identifierType!, 2)
        _ = self.writeBitsInt(model.identifierLength!, 1)
        _ = self.writeBitsInt(model.lengthType!, 2)
        _ = self.writeBitsInt(model.other!, 3)
        _ = self.writeBytes(model.identifier!)
        _ = self.writeU2(model.len!)
        _ = self.writeBytes(model.value!)
        return self
    }

    



    func write(_ model: InterfaceLock) -> TapStreamWriter{
        return self.writeInterfaceLock(model)
    }

    func writeInterfaceLock(_ model: InterfaceLock) -> TapStreamWriter{
        self.forwardBits(8)

        self.forwardBits(3)

        _ = self.writeBitsInt(model.scramActivated!, 1)
        _ = self.writeBitsInt(model.hashPassword!, 1)
        _ = self.writeBitsInt(model.factoryReset!, 1)
        _ = self.writeBitsInt(model.resourceLogUid!, 1)
        _ = self.writeBitsInt(model.resouceFactory!, 1)
        return self
    }

    



    func write(_ model: LoginCredential) -> TapStreamWriter{
        return self.writeLoginCredential(model)
    }

    func writeLoginCredential(_ model: LoginCredential) -> TapStreamWriter{
        _ = self.writeStr(model.username!, length: Int(16))
        _ = self.writeStr(model.password!, length: Int(16))
        return self
    }

    



    func write(_ model: LoginCredentialHashed) -> TapStreamWriter{
        return self.writeLoginCredentialHashed(model)
    }

    func writeLoginCredentialHashed(_ model: LoginCredentialHashed) -> TapStreamWriter{
        _ = self.writeStr(model.username!, length: Int(16))
        _ = self.writeBytes(model.password!)
        return self
    }

    



    func write(_ model: ScramLoginParams) -> TapStreamWriter{
        return self.writeScramLoginParams(model)
    }

    func writeScramLoginParams(_ model: ScramLoginParams) -> TapStreamWriter{
        _ = self.writeStr(model.username!, length: Int(16))
        _ = self.writeU4(model.clientNonce!)
        return self
    }

    



    func write(_ model: ScramLoginResponseBody) -> TapStreamWriter{
        return self.writeScramLoginResponseBody(model)
    }

    func writeScramLoginResponseBody(_ model: ScramLoginResponseBody) -> TapStreamWriter{
        _ = self.writeU4(model.serverNonce!)
        _ = self.writeBytes(model.salt!)
        _ = self.writeU4(model.iterationNumber!)
        return self
    }

    



    func write(_ model: TargetComStats) -> TapStreamWriter{
        return self.writeTargetComStats(model)
    }

    func writeTargetComStats(_ model: TargetComStats) -> TapStreamWriter{
        _ = self.writeU4(model.nbFailCom!)
        _ = self.writeU4(model.nbSuccessfulCom!)
        return self
    }

    



    func write(_ model: AvailableFunction) -> TapStreamWriter{
        return self.writeAvailableFunction(model)
    }

    func writeAvailableFunction(_ model: AvailableFunction) -> TapStreamWriter{
        self.forwardBits(6)

        _ = self.writeBitsInt(model.debug!, 1)
        _ = self.writeBitsInt(model.datalog!, 1)
        return self
    }

    



    func write(_ model: CrcCheckBody) -> TapStreamWriter{
        return self.writeCrcCheckBody(model)
    }

    func writeCrcCheckBody(_ model: CrcCheckBody) -> TapStreamWriter{
        _ = self.writeU4(model.address!)
        _ = self.writeU4(model.size!)
        _ = self.writeU4(model.crc!)
        return self
    }

    



    func write(_ model: SinglePacket) -> TapStreamWriter{
        return self.writeSinglePacket(model)
    }

    func writeSinglePacket(_ model: SinglePacket) -> TapStreamWriter{
        _ = self.writeU4(model.sendTime!)
        _ = self.writeU2(model.packetLength!)
        _ = self.writeU2(model.packetId!)
        _ = self.writeU4(model.configVersion!)
        _ = self.writeBitsInt(model.messageType!.rawValue, 4)
        self.forwardBits(2)

        _ = self.writeBitsInt(model.encryption!, 1)
        _ = self.writeBitsInt(model.ack!, 1)
        _ = self.writeU1(model.senderId!)
        _ = self.writeU2(model.salt!)
        _ = self.writeU4(model.logTime!)
        _ = self.writeU2(model.dataSize!)
        _ = self.writeBytes(model.data!)
        _ = self.writeBytes(model.padding!)
        _ = self.appendCRC()
        return self
    }

    


}
