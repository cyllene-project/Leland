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

struct Compositor {

	//var destroySignal: Signal
	var display: Display
	//var xleland: XWayland
	//var xlelandInterface: XWaylandInterface
	 
	//var createSurface: Signal
	//var activate: Signal
	//var transform: Signal
	
	//var kill: Signal
	//var idle: Signal
	//var wake: Signal

	//var showInputPanel: Signal
	//var hideInputPanel: Signal
	//var updateInputPanel: Signal

	var seatCreated: Signal
	var outputPending: Signal
	var outputCreated: Signal
	var outputDestroyed: Signal
	var outputMoved: Signal
	var outputResized: Signal
	
	var session: Signal
	var sessionActive : Bool

	var fadeLayer: Layer
	var cursorLayer: Layer

	var pendingOutputs: LinkedList<>
	var outputs: LinkedList<>
	var seats: LinkedList<>
	var layers: LinkedList<>
	var views: LinkedList<>
	var planes: LinkedList<>
	var keyBindings: LinkedList<>
	var modifierBindings: LinkedList<>
	var buttonBindings: LinkedList<>
	var touchBindings: LinkedList<>
	var axisBindings: LinkedList<>
	var debugBindings: LinkedList<>

	var state : UInt32
	
	var idleSource: EventSource
	var idleInhibit: UInt32
	var idleTime: Int		/* timeout, s */
	var repaintTimer: EventSource

	let defaultPointerGrab: PointerGrab

	var primaryPlane: Plane

	var capabilities: [Capabilities]

	var renderer: Renderer

	//pixman_format_code_t read_format;

	var backend : Backend

	var launcher: Launcher

	var pluginApis: LinkedList<> /* struct weston_plugin_api::link */

	var outputIdPool: UInt32

	var xkbNames: XkbRuleNames
	var xkbContext: XkbContext
	var xkbInfo: XkbInfo

	var kbRepeatRate: Int32
	var kbRepeatDelay: Int32

	var vtSwitching: Bool

	var presentationClock: clockid_t
	var repaintMsec: Int32

	var activateSerial: UInt

	var pointerConstraints: Global

	var exitCode: Int

	var userData: Any?
	var exit: (Compositor) -> Void

	var requireInput: Bool
}
