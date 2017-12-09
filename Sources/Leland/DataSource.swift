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

protocol DataSource {

	//var resource: Resource
	//var destroySignal: Signal
	//var mimeTypes: Array
	//var offer: DataOffer
	//var seat: Seat
	var accepted: Bool { get }
	var actionsSet: Bool { get }
	var dndActions: UInt32 { get }
	//var currentDndAction: DndAction
	//var compositorAction: DndAction
	
	var accept: (DataSource,UInt32,String) -> Void { get }
	var send: (DataSource,String,Int32) -> Void { get }
	var cancel: (DataSource) -> Void { get }


}
