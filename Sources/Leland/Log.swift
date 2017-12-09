//===----------------------------------------------------------------------===//
//
// This source file is part of the Cyllene open source project
//
// Copyright (c) 2017 Chris Daley
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
//
// See http://www.apache.org/licenses/LICENSE-2.0 for license information
//
//===----------------------------------------------------------------------===//

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
