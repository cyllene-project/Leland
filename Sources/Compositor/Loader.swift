#if os(Linux)
import Glibc
#else
import Darwin
#endif

import Foundation
import fd
import CommandLineKit

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
			return
		}

		if self.help.value {
			self.cli.printUsage()
			return
		}

    }
}


