// MARK: UTF8 Control Characters

extension Byte {
    /// '\t'
    public static let horizontalTab: Byte = 0x9

    /// '\n'
    public static let newLine: Byte = 0xA

    /// '\r'
    public static let carriageReturn: Byte = 0xD

    /// ' '
    public static let space: Byte = 0x20

    /// !
    public static let exclamation: Byte = 0x21

    /// "
    public static let quote: Byte = 0x22

    /// #
    public static let numberSign: Byte = 0x23

    /// $
    public static let dollar: Byte = 0x24

    /// %
    public static let percent: Byte = 0x25

    /// &
    public static let ampersand: Byte = 0x26

    /// '
    public static let apostrophe: Byte = 0x27

    /// (
    public static let leftParenthesis: Byte = 0x28

    /// )
    public static let rightParenthesis: Byte = 0x29

    /// *
    public static let asterisk: Byte = 0x2A

    /// +
    public static let plus: Byte = 0x2B

    /// ,
    public static let comma: Byte = 0x2C

    /// -
    public static let hyphen: Byte = 0x2D

    /// .
    public static let period: Byte = 0x2E

    /// /
    public static let forwardSlash: Byte = 0x2F

    /// \
    public static let backSlash: Byte = 0x5C

    /// :
    public static let colon: Byte = 0x3A

    /// ;
    public static let semicolon: Byte = 0x3B

    /// =
    public static let equals: Byte = 0x3D

    /// ?
    public static let questionMark: Byte = 0x3F

    /// @
    public static let at: Byte = 0x40

    /// [
    public static let leftSquareBracket: Byte = 0x5B

    /// ]
    public static let rightSquareBracket: Byte = 0x5D

    /// _
    public static let underscore: Byte = 0x5F

    /// ~
    public static let tilda: Byte = 0x7E
}

extension Byte {
    /**
         Defines the `crlf` used to denote
         line breaks in HTTP and many other
         formatters
    */
    public static let crlf: Bytes = [
        .carriageReturn,
        .newLine
    ]
}