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

protocol PointerGrabProtocol {

	func focus (grab:PointerGrab) -> Void

	//func motion (grab:PointerGrab, time:TimeSpecification, event:MotionEvent) -> Void
	
	func button (grab:PointerGrab, time:TimeSpecification, button: UInt32, state: UInt32) -> Void
	
	func axis (grab:PointerGrab, time:TimeSpecification, event:PointerAxisEvent) -> Void
	
	func axisSource (grab:PointerGrab, source: UInt32) -> Void
	
	func frame (grab:PointerGrab) -> Void
	
	func cancel (grab:PointerGrab) -> Void

}
