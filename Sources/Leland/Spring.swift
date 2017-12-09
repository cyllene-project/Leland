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

import TimeSpecification

let NSEC_PER_SEC:Int64 = 1000000000

public struct Spring {

	var k: Double
	
	var friction: Double = 400.0
	
	var current: Double
	
	var target: Double
	
	var previous: Double
	
	var min: Double = 0.0
	
	var max: Double = 1.0
	
	var timestamp: TimeSpecification = TimeSpecification(seconds:0,nanoseconds:0)

	var clip : Clip = Clip.Overshoot

	
	init(k: Double, current: Double, target: Double) {
	
		self.k = k
		self.current = current
		self.previous = current
		self.target = target
	
	}
	
	public mutating func update(time:TimeSpecification) {
	
		var force, v, current, step: Double
		
		if TimeSpecification.sub_to_msec(a:time,b:self.timestamp) > 1000 {
			// Log warning 
			self.timestamp.add_msec(a:time, b:-1000)
		}
	
		step = 0.01
		
		while 4 < TimeSpecification.sub_to_msec(a:time,b:self.timestamp) {
		
			current = self.current
			v = current - self.previous
			force = self.k * (self.target - current) / 10.0 + (self.previous - current) - v * self.friction
			self.current = current + (current - self.previous) + force * step * step
			self.previous = current

			switch self.clip {

				case Clip.Overshoot:
					break
				
				case Clip.Clamp:
					if self.current > self.max {
						self.current = self.max
						self.previous = self.max
					} else if self.current < 0.0 {
						self.current = self.min
						self.previous = self.min
					}
					break
					
				case Clip.Bounce:
					if self.current > self.max {
						self.current = 2 * self.max - self.current
						self.previous = 2 * self.max - self.previous
					} else if self.current < self.min {
						self.current = 2 * self.min - self.current
						self.previous = 2 * self.min - self.previous
					}
					break
			}
			self.timestamp.add_msec (a:self.timestamp, b:4)
		}
	}

	public func done() -> Bool {
	
		return abs(self.previous - self.target) < 0.002 && abs(self.current - self.target) < 0.002
	
	}

}

extension TimeSpecification {

	public static func sub_to_msec(a:TimeSpecification, b:TimeSpecification) -> Int64 {
		
		let sub = a - b
		
		let result: Int64 = sub.seconds * NSEC_PER_SEC + Int64(sub.nanoseconds)
		
		return result
	}
	
	public mutating func add_msec(a:TimeSpecification, b:Int64) {
		
		self.seconds = a.seconds + (b / NSEC_PER_SEC)
		self.nanoseconds = a.nanoseconds + Int32(b % NSEC_PER_SEC)
		
		if self.nanoseconds >= NSEC_PER_SEC {
			self.seconds += 1
			self.nanoseconds -= Int32(NSEC_PER_SEC)		
		} else if self.nanoseconds < 0 {
			self.seconds -= 1
			self.nanoseconds += Int32(NSEC_PER_SEC)
		}
	}

}
