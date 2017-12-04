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
