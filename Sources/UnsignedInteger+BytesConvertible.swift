extension UInt8: BytesConvertible {}
extension UInt16: BytesConvertible {}
extension UInt32: BytesConvertible {}
extension UInt64: BytesConvertible {}

extension UnsignedInteger {
    /**
         Bytes are concatenated to make an Unsigned Integer Object.
       
         [0b1111_1011, 0b0000_1111]
         =>
         0b1111_1011_0000_1111
    */
    public init(bytes: Bytes) {
        // 8 bytes in UInt64, etc. clips overflow
        let prefix = bytes.prefix(MemoryLayout<Self>.size)
        var value: UIntMax = 0
        prefix.forEach { byte in
            value <<= 8 // 1 byte is 8 bits
            value |= byte.toUIntMax()
        }

        self.init(value)
    }

    /**
         Convert an Unsigned integer into its collection of bytes
     
         0b1111_1011_0000_1111
         =>
         [0b1111_1011, 0b0000_1111]
         ... etc.
    */
    public func makeBytes() -> Bytes {
        let byteMask: Self = 0b1111_1111
        let size = MemoryLayout<Self>.size
        var copy = self
        var bytes: [Byte] = []
        (1...size).forEach { _ in
            let next = copy & byteMask
            let byte = Byte(next.toUIntMax())
            bytes.insert(byte, at: 0)
            copy.shiftRight(8)
        }
        return bytes
    }
}

extension UnsignedInteger {
    /**
        Returns whether or not a given bitMask is part of the caller
    */
    public func containsMask(_ mask: Self) -> Bool {
        return (self & mask) == mask
    }
}

extension UnsignedInteger {
    /**
        A right bit shifter that is supported without the need for a concrete type.
    */
    mutating func shiftRight(_ places: Int) {
        (1...places).forEach { _ in
            self /= 2
        }
    }

    /**
        A bit shifter that is supported without the need for a concrete type.
    */
    mutating func shiftLeft(_ places: Int) {
        (1...places).forEach { _ in
            self *= 2
        }
    }
}