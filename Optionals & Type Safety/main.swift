//
//  main.swift
//  Optionals & Type Safety
//
//  Created by Zamin on 03.03.25.
//

import Foundation

// MARK: - Type Safety
// Swift provides type safety, meaning once a variable's type is defined, it cannot hold a different type.

var number: Int = 10
// number = "Swift" // Error! The variable 'number' is an Int and cannot hold a String.

// MARK: - Optionals
// To indicate that a variable can hold a nil (empty) value, use "?".

var optionalString: String? = "Hello"
print(optionalString) // Optional("Hello")

optionalString = nil // Now this variable can be nil
print(optionalString) // nil

// MARK: - Nil Check and Optional Binding
// To safely use an optional variable, use 'if let' or 'guard let'.

if let unwrappedString = optionalString {
    print("Unwrapped value: \(unwrappedString)")
} else {
    print("Value is nil and cannot be used.")
}

// Using guard let (more suitable for early exit)
func checkOptional() {
    guard let safeString = optionalString else {
        print("Value is nil, operation cannot proceed.")
        return
    }
    print("Unwrapped using guard let: \(safeString)")
}

checkOptional()

// MARK: - Force Unwrapping (Not Recommended)
// If an optional variable is guaranteed not to be nil, you can force unwrap it using "!".

// optionalString = "Hello again" // If nil, it will cause a runtime error
// print(optionalString!) // Force unwrapping

// MARK: - Optional Chaining
// If an object might be nil and you want to access its property, use "?".

struct Person {
    var name: String
    var address: Address?
}

struct Address {
    var city: String
}

let person = Person(name: "Ahmet", address: nil)
print(person.address?.city ?? "No address information") // Using optional chaining

// MARK: - Nil-Coalescing Operator
// Use "??" to provide a default value when nil is encountered.

let defaultName = optionalString ?? "Default Value"
print(defaultName) // "Default Value" (if optionalString is nil)

// MARK: - Implicitly Unwrapped Optionals
// If an optional variable is always expected to have a value, use "!".

var implicitlyUnwrapped: String! = "I always hold a value"
print(implicitlyUnwrapped)

implicitlyUnwrapped = nil
// print(implicitlyUnwrapped) // If nil, it will cause a runtime error

// MARK: - Optional Enum Structure
// Optionals in Swift are actually an enum.

let someOptional: Int? = 5
print(someOptional as Any) // Stored as Optional(5)

// Optionals are a fundamental safety feature in Swift. Understanding their usage reduces the likelihood of runtime errors.
