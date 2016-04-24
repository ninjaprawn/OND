# Operator Not Deprecated

[![CI Status](http://img.shields.io/travis/Ninjaprawn/OND.svg?style=flat)](https://travis-ci.org/Ninjaprawn/OND)
[![Version](https://img.shields.io/cocoapods/v/OND.svg?style=flat)](http://cocoapods.org/pods/OND)
[![License](https://img.shields.io/cocoapods/l/OND.svg?style=flat)](http://cocoapods.org/pods/OND)
[![Platform](https://img.shields.io/cocoapods/p/OND.svg?style=flat)](http://cocoapods.org/pods/OND)

## What is this? 

'Operator Not Deprecated' is a small project I wrote that brings back the operators deprecated in [004 of swift-evolution proposals](https://github.com/apple/swift-evolution/blob/master/proposals/0004-remove-pre-post-inc-decrement.md). Though I agree with the removal, some people might like the old style.

## Usage

*NOTE:* These operators will change back to 2*symbol in Swift 3

There are currently 4 operators that have been re-implemented. They are:

```swift
let a = +++x  // pre-increment  - returns input value after mutation
let b = x+++  // post-increment - returns copy of input value before mutation
let c = ---x  // pre-decrement  - returns input value after mutation
let d = x---  // post-decrement - returns copy of input value before mutation
```

Small tip: You don't have to assign the result of the operator.

## Installation

OND is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "OND"
```

## Author

George Dan, george@ninjaprawn.com

## License

OND is available under the MIT license. See the LICENSE file for more info.
