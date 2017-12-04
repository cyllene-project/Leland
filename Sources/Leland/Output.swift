import TimeSpecification

public struct Output {

	var id: UInt32
	var name: String
	var rendererState: Any?
	
	//var link: LinkedList<>
	//var resourceList: LinkedList<>
	//var global: Global
	
	//var compositor: Compositor
	
	//var matrix: Matrix
	//var inverseMatrix: Matrix
	
	//var animationList: LinkedList<>
	var x, y, width, height: Int32
	var mmWidth, mmHeight: Int32
	
	//var region: Region32
	//var previousDamage: Region32
	
	var repaintNeeded: Bool
	
	enum Status {
		case notScheduled
		case beginFromIdle
		case scheduled
		case awaitingCompletion
	}
	
	var repaintStatus: Status
	
	var nextRepaint: TimeSpecification
	
	var zoom: OutputZoom
	
	var dirty: Int
	
	//var frameSignal: Signal
	//var destroySignal: Signal
	
	var moveX, moveY: Int
	
	var frameTime: TimeSpecification
	
	var msc: UInt64
	
	var diasablePlanes: Int
	var destroying: Int
	
	//var feedbackList: LinkedList<>
	
	var make, model, serialNumber: String
	
	var subpixel: UInt32
	var transform: UInt32
	var nativeScale: Int32
	var currentScale: Int32
	var originalScale: Int32
	
	var nativeMode: Mode
	var currentMode: Mode
	var originalMode: Mode
	
	//var modeList: LinkedList<>
	
	var startRepaintLoop: (Output) -> Void
	//var repaint: (Output, Region32, Any) -> Int
	var destroy: (Output) -> Void
	var assignPlanes: (Output, Any) -> Void
	var switchMode: (Output, Mode) -> Int
	
	var backlightCurrent: Int32
	var setBacklight: (Output, UInt32) -> Void
	var setDpms: (Output, Dpms) -> Void
	
	var connectionInternal: Bool
	var gammaSize: UInt16
	var setGamma: (Output, UInt16, UInt16, UInt16, UInt16) -> Void
	
	//var timeline: TimeLineObject
	
	var enabled: Bool
	
	var scale: Int
	
	var enable: (Output) -> Int
	var disable: (Output) -> Int
	
}
