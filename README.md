# Symday

[![Build Status](https://travis-ci.org/tnantoka/Symday.svg?branch=master)](https://travis-ci.org/tnantoka/Symday)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

## Installation

### Carthage

```swift
// Cartfile
github "tnantoka/Symday"
```

### CocoaPods

```ruby
# Podfile
pod 'Symday'
```

### Swift Package Manager

```swift
// Package.swift
.Package(url: "https://github.com/tnantoka/Symday.git", majorVersion: 0),
```

## Usage

```swift
import Symday

let date = NSDate(timeIntervalSince1970: 1_279_410_659)
Symday().format(date) // Jul 17, 2010
Symday().format(date, template: "MdEEE") // Sat, 7/17
Symday(locale: NSLocale(localeIdentifier: "ja_JP")).format(date) // 2010年7月17日
```

## References

http://www.unicode.org/reports/tr35/tr35-31/tr35-dates.html#Date_Format_Patterns

## Author

[@tnantoka](https://twitter.com/tnantoka)

