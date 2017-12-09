import TimeSpecification
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

struct Keyboard {

	//var seat: Seat
	
	//var resourceList: LinkedList<>
	//var focusResourceList: LinkedList<>
	//var focus: Surface
	//var focusRemoveListener: Listener
	
	var focusSerial: UInt32
	
	//var focusSignal: Signal
	
	var grab: KeyboardGrab
	var defaultGrab: KeyboardGrab
	var grabKey: UInt32
	var grabSerial: UInt32
	var grabTime: TimeSpecification
	
	//var keys: Array
	
	var modifiers: (modsDepressed:UInt32, modsLatched:UInt32, modsLocked:UInt32, group:UInt32)

	var inputMethodGrab: KeyboardGrab
	
	//var inputMethodResource: Resource
	
	//var xkbInfo: XkbInfo
	
	//var xkbState (state:XkbState, leds:Led)
	
	//var pendingKeymap: XkbKeyMap

}
