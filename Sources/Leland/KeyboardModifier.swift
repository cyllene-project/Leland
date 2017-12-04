struct KeyboardModifier : OptionSet {
    let rawValue: Int

    static let Ctrl		= KeyboardModifier(rawValue: 1 << 0)
    static let Alt		= KeyboardModifier(rawValue: 1 << 1)
    static let Super	= KeyboardModifier(rawValue: 1 << 2)
    static let Shift	= KeyboardModifier(rawValue: 1 << 3)
}
