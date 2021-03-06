//===----------------------------------------------------------------------===//
//
// This source file is part of the Cyllene open source project
//
// Copyright (c) 2017 Chris Daley
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
//
// See http://www.apache.org/licenses/LICENSE-2.0 for license information
//
//===----------------------------------------------------------------------===//

struct KeyboardModifier : OptionSet {
    let rawValue: Int

    static let Ctrl		= KeyboardModifier(rawValue: 1 << 0)
    static let Alt		= KeyboardModifier(rawValue: 1 << 1)
    static let Super	= KeyboardModifier(rawValue: 1 << 2)
    static let Shift	= KeyboardModifier(rawValue: 1 << 3)
}
