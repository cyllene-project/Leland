public struct ClipboardSource: DataSource {

	//var contents: Array
	var clipboard: Clipboard
	//var eventSource: EventSource
	var serial: UInt32
	var refcount: Int
	var fd: Int

}
