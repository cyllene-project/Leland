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

protocol TouchGrabProtocol {

	//func down (grab:TouchGrab, time:TimeSpecification, touchId:int, sx:Fixed, sy:Fixed) -> Void

	func up (grab:TouchGrab, time:TimeSpecification, touchId: Int) -> Void
	
	//func motion (grab:TouchGrab, time:TimeSpecification, touchId: Int, sx:Fixed, sy:Fixed) -> Void

	func frame (grab:TouchGrab) -> Void
	
	func cancel (grab:TouchGrab) -> Void

}
