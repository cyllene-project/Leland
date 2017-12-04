import TimeSpecification

typealias FrameFunc = (Animation, Output, TimeSpecification) -> Void

public struct Animation {

	var frame: FrameFunc
	
	var frameCounter: Int
	
	//var link: LinkedList<>

}
