protocol DataSource {

	//var resource: Resource
	//var destroySignal: Signal
	//var mimeTypes: Array
	//var offer: DataOffer
	//var seat: Seat
	var accepted: Bool
	var actionsSet: Bool
	var dndActions: UInt32
	//var currentDndAction: DndAction
	//var compositorAction: DndAction
	
	var accept: (DataSource,UInt32,String) -> Void
	var send: (DataSource,String,Int32) -> Void
	var cancel: (DataSource) -> Void


}
