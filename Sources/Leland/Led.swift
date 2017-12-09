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

struct Led : OptionSet {
    let rawValue: Int

    static let NumLock		= Led(rawValue: 1 << 0)
    static let CapsLock		= Led(rawValue: 1 << 1)
    static let ScrollLock	= Led(rawValue: 1 << 2)
}
