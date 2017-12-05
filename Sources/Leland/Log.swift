typealias LogFunction = (String, CVaListPointer...) -> Int


final class Log {

	static let sharedInstance = Log()
	
	var logHandler: LogFunction?
	var continueHandler: LogFunction?
	
	private init() {}
	
	
	func set_handler(log: @escaping LogFunction, cont: @escaping LogFunction) {
		
		self.logHandler = log
		self.continueHandler = cont
		
	}
	
	/*
	func vlog(fmt:String, _ ap:CVarArg...) -> Int {
		
		return withVaList(ap) {
            logHandler(fmt, $0)
        }
	}*/
	
	
	
	
}
