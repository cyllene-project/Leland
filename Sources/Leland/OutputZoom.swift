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

public struct OutputZoom {

	var active: Bool
	
	var increment: Float
	
	var level: Float
	
	var maxLevel: Float
	
	var transX, transY: Float
	
	var current: (x:Double,y:Double)

	//var seat: Seat
	
	var animationZ: Animation
	
	var springZ: Spring
	
	// var motionListener: Listener

}
