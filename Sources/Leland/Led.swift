struct Led : OptionSet {
    let rawValue: Int

    static let NumLock		= Led(rawValue: 1 << 0)
    static let CapsLock		= Led(rawValue: 1 << 1)
    static let ScrollLock	= Led(rawValue: 1 << 2)
}
