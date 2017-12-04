import TimeSpecification

protocol KeyboardGrabProtocol {

	func key (grab:KeyboardGrab, time:TimeSpecification, key:UInt32, state:UInt32) -> Void
	
	func modifiers (grab:KeyboardGrab, serial:UInt32, modsDepressed:UInt32, modsLatched:UInt32, modsLocked:UInt32, group:UInt32) -> Void
	
	func cancel (grab:KeyboardGrab) -> Void

}
