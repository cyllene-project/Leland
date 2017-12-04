struct KeyboardLocks : OptionSet {
    let rawValue: Int

    static let NumLock		= KeyboardLocks(rawValue: 1 << 0)
    static let CapsLock		= KeyboardLocks(rawValue: 1 << 1)
}
