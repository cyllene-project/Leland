struct PointerMotionMask : OptionSet {
    let rawValue: Int

    static let absolute					= PointerMotionMask(rawValue: 1 << 0)
    static let relative					= PointerMotionMask(rawValue: 1 << 1)
    static let relativeUnaccelerated 	= PointerMotionMask(rawValue: 1 << 2)
}
