//
//  OND.swift
//
//  Copyright (c) 2016 George Dan (george@ninjaprawn.com)
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFT


// Create prefix addition operator definition
prefix operator +++ {}

// Prefix addition function
public prefix func +++ <T: Strideable>(inout number: T) -> T {
	// Uses .advancedBy instead of += due to .advancedBy is available on type T
	number = number.advancedBy(1)
	return number
}


// Create postfix addition operator definition
postfix operator +++ {}

public postfix func +++ <T: Strideable>(inout number: T) -> T {
	// Stores number so we can return original value
	let newNumber = number
	// Uses .advancedBy instead of += due to .advancedBy is available on type T
	number = number.advancedBy(1)
	return newNumber
}


// Create prefix subtraction operator definition
prefix operator --- {}

public prefix func --- <T: Strideable>(inout number: T) -> T {
	// Uses .advancedBy instead of -= due to .advancedBy being available on type T
	number = number.advancedBy(-1)
	return number
}


// Create postfix subtraction operator definition
postfix operator --- {}

public postfix func --- <T: Strideable>(inout number: T) -> T {
	// Stores number so we can return original value
	let newNumber = number
	// Uses .advancedBy instead of -= due to .advancedBy being available on type T
	number = number.advancedBy(-1)
	return newNumber
}