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

import TimeSpecification

protocol KeyboardGrabProtocol {

	func key (grab:KeyboardGrab, time:TimeSpecification, key:UInt32, state:UInt32) -> Void
	
	func modifiers (grab:KeyboardGrab, serial:UInt32, modsDepressed:UInt32, modsLatched:UInt32, modsLocked:UInt32, group:UInt32) -> Void
	
	func cancel (grab:KeyboardGrab) -> Void

}
