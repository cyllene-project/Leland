import TimeSpecification

protocol TouchGrabProtocol {

	//func down (grab:TouchGrab, time:TimeSpecification, touchId:int, sx:Fixed, sy:Fixed) -> Void

	func up (grab:TouchGrab, time:TimeSpecification, touchId: Int) -> Void
	
	//func motion (grab:TouchGrab, time:TimeSpecification, touchId: Int, sx:Fixed, sy:Fixed) -> Void

	func frame (grab:TouchGrab) -> Void
	
	func cancel (grab:TouchGrab) -> Void

}
