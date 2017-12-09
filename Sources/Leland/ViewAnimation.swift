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

typealias ViewAnimationFrameFunc = (ViewAnimation) -> Void

typealias ViewAnimationDoneFunc = (ViewAnimation, Any?) -> Void

struct ViewAnimation {

	var view: View

	var animation: Animation
	
	var spring: Spring
	
	var transform: Transform
	
	//var listener: Listener
	
	var start, stop: Float
	
	var frame: ViewAnimationFrameFunc

	var reset: ViewAnimationFrameFunc?
	
	var done: ViewAnimationDoneFunc
	
	var data: Any?
	
	var priv: Any
	

}
