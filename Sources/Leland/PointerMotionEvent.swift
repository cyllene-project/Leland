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

struct PointMotionEvent {

	var mask: PointerMotionMask
	var time: TimeSpecification
	var x: Double
	var y: Double
	var dx: Double
	var dy: Double
	var dxUnaccel: Double
	var dyUnaccel: Double


}
