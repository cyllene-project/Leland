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
