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

struct Touch {

	//var seat: Seat

	//var resourceList: LinkedList<>
	//var focusResourceList: LinkedList<>
	var focus: View
	//var focusViewListener: Listener
	//var focusResourceListener: Listener
	var focusSerial: UInt32
	//var focusSignal: Signal
	
	var numTp:UInt32
	
	var grab: TouchGrab
	var defaultGrab: TouchGrab
	var grabTouchId: Int
	//var grabX, grabY: Fixed
	var grabSerial: UInt32
	var grabTime: TimeSpecification 

}
