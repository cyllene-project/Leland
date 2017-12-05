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
