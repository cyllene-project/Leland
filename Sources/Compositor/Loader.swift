#if os(Linux)
import Glibc
#else
import Darwin
#endif

import Foundation
import fd
import CommandLineKit
import OS

public final class Loader {

	let cli = CommandLineKit.CommandLine()

	let version = BoolOption(shortFlag: "v", longFlag: "version",
	  helpMessage: "Print Leland version")

	// enum type...
	let backend = StringOption(shortFlag: "B", longFlag: "backend", required: false,
	  helpMessage: "Backend module, one of:")

	let shell = StringOption(longFlag: "shell", required: false,
	  helpMessage: "Shell module, defaults to desktop-shell")

	let socket = StringOption(shortFlag: "S", longFlag: "socket", required: false,
	  helpMessage: "Name of socket to listen on")

	let idleTime = IntOption(shortFlag: "i", longFlag: "idle-time", required: false,
	  helpMessage: "Idle time in seconds")

	let modules = StringOption(longFlag: "modules", required: false,
	  helpMessage: "Load the comma-separated list of modules")

	let log = StringOption(longFlag: "log", required: false,
	  helpMessage: "Log to the given file")

	let config = StringOption(shortFlag: "c", longFlag: "config", required: false,
	  helpMessage: "Config file to load, defaults to leland.ini")

	let noConfig = BoolOption(longFlag: "no-config", helpMessage: "Do not read leland.ini")

	let waitForDebugger = BoolOption(longFlag: "wait-for-debugger",
		helpMessage: "Raise SIGSTOP on start-up")

	let help = BoolOption(shortFlag: "h", longFlag: "help",
		helpMessage: "This help message")


    public func run() throws {
		
		self.cli.addOptions(self.version, self.backend, self.shell, self.socket, self.idleTime,
			self.modules, self.log, self.config, self.noConfig, self.waitForDebugger, self.help)

		do {
			try self.cli.parse()
		} catch {
			self.cli.printUsage(error)
			exit(EXIT_FAILURE)
		}

		if self.help.value {
			self.cli.printUsage()
			exit(EXIT_SUCCESS)
		}

		if self.version.value {
			//print version
			exit(EXIT_SUCCESS)
		}

		// check if can set stdin to cloexec
		// Log.setHandler(vlog, vlogContinue)
		// Log.fileOpen(log.value)
		
		catchSignals()
		
		// log package info and command line
		
		//logUname()
		
		//verifyXdgRuntimeDir()

		//var display = Display.init()
		
		//var loop = display.loop
		
		//add signals
		//var signals: [EventSource] = []
		//signals.append(loop.addSignal(Signal.term, onTermSignal, display)
		//signals.append(loop.addSignal(Signal.int, onTermSignal, display)
		//signals.append(loop.addSignal(Signal.quit, onTermSignal, display)
		
		//signals.append(loop.addSignal(Signal.chld, sigchldHandler)

		//load configuration
		
		//try loadConfiguration()
		
		//userData.config = config
		//userData.parsedOptions = nil
		
		//let section = config.getSection("core")
		
		if !self.waitForDebugger.value {
			//self.waitForDebugger.value = section.getBool("wait-for-debugger")
		}
		if self.waitForDebugger.value {
			//log getpid()
			//raise(Signal.stop)
		}
		
		if self.backend.value == nil {
			//let backend = section.getString("backend")
			
			//if backend == nil {
				//backend = chooseDefaultBackend()
			//}
		}
		
		//let var ec = Compositor.init(display, userData)
		
		//let segvCompositor = ec!
		
		//try ec.initConfig(config)
		
		//let ec.requireInput = section.getBool("require-input", true)
		
		//try ec.loadBackend(backend, argc, argv, config)
		// throw error "fatal: failed to create compositor backend"
		
		//ec.pendingOutputColdPlug()
		
		if self.idleTime.value! < 0 {
			//idleTime = section.getInt("idle-time", false)
		}
		if idleTime.value! < 0 {
			//idleTime.value = 300
		}

		//ec.idleTime = idleTime
		//ec.defaultPointerGrab = nil
		//ec.exit = handleExit
		
		//ec.logCapabilities()
		
		let serverSocket = getenv("WAYLAND_SERVER_SOCKET") {
			//log("Running with single client")
			//let fd = Int(serverSocket) {
			//} else {
			//fd = -1
			//}
		} else {
			//fd = -1
		}
		
		//if fd != -1 {
			//try primaryClient = Client.init(display, fd)
			//throw error ("fatal: failed to add client: %m")
			//primaryClientDestroyed.notify = handlePrimaryClientDestroyed
			//primaryClient.addDestroyListener(primaryClientDestroyed)
		//} else if display.createListeningSocket(socketName) {
			//return?
		//}

		if self.shell.value != nil {
			//shell = section.getString("shell", "desktop-shell")
		}
		
		//try loadShell(ec, shell, argc, argv)
		
		//modules = section.getString("modules")
		//try xwayland = loadModules(ec, modules, argc, argv)
		//try xwayland = loadModules(ec, optionModules, argc, argv)
		
		//if !xwayland {
		//	xwayland = section.getBool("xwayland", false)
		//}
		
		//if xwayland {
			//try loadXwayland(ex)
		//}
		
		//section = config.getSection("keyboard")
		//numlockOn = section.getBool("numlock-on", false)
		//if numlockOn {
			//for seat in ec.seatList {
			//	if let keyboard = seat.getKeyboard() {
			//		keyboard.setLocks(.numLock,.numLock)
			//	}
		//}
		
		//check for unhandled options
		
		//ec.wake()
		//display.run()
		
		//return ec.exitCode

    }
    
    func catchSignals() {
		
		//var sigAction = sigaction()
		
		//sigAction.__sigaction_handler = unsafeBitCast(action, sigaction.__Unnamed_union___sigaction_handler.self)
		
		//sigaction(Signal.segv.value, &sigAction, nil)

	}
    
    func verifyXdgRuntimeDir() {

		let dir = ProcessInfo.processInfo.environment["XDG_RUNTIME_DIR"]
		
		if dir == nil {
			//log failure
			//throw error instead
			exit(EXIT_FAILURE)
		}
				
		let fileManager = FileManager.default
		var isDir: ObjCBool = false	
			
		if fileManager.fileExists(atPath: dir!, isDirectory: &isDir) {
			if !isDir {
				// throw error
				exit(EXIT_FAILURE)
			}	
		}
		
		do {
		
			let attributes = try fileManager.attributesOfItem(atPath: dir!)
				
			if let data = attributes[FileAttributeKey.posixPermissions], let ownerId = attributes[FileAttributeKey.ownerAccountID] {
				let permissions = UInt64(truncating: data as! NSNumber)
				let owner = UInt64(truncating: ownerId as! NSNumber)
				
				if permissions != 0700 || owner != getuid() {
					// this should error out

				}
			}
		} catch {
			
		}

	}
    
}


