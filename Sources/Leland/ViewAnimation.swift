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
