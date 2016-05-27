//
//  Overview.swift
//  ClassesInSwift
//
//  Created by Ezekiel Abuhoff on 5/27/16.
//  Copyright © 2016 Ezekiel Abuhoff. All rights reserved.
//

import Foundation


//////////// CLASSES IN SWIFT ////////////

/*
 
 This lesson will introduce the concept of classes as they exist in Swift.
 We will concepts that answer the following questions:
 
 * What is a class?
 * What makes classes useful?
 * How do I create a class?
 * What is an instance variable?
 * How do I use an instance variable?
 
 We will be referring to the following files:
 
 * Vehicle.swift
 * _1_Classes_SwiftTests.swift
 
 Here is the official documentation for classes in Swift:
 
 https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/ClassesAndStructures.html
 
 Here is some sample code that demonstrates the syntax for creating a class:
 
 */

class AClass {
    let instanceConstant = "value"
    let anotherInstanceConstant: String
    var instanceVariable = "value"
    var anotherInstanceVariable: String
    
    init () {
        anotherInstanceConstant = "value"
        anotherInstanceVariable = "value"
    }
    
    func instanceMethod (parameter: String) -> String {
        if parameter == "value" {
            return "one thing"
        }
        return "another thing"
    }
}

/*
 
 LESSON SYNOPSIS
 
 Consider these two possible approaches to building a house:
 
 1) You follow a step-by-step instructions regarding every brick, beam and inch of plaster to lay.
 2) You read a blueprint of where everything should be, and assemble each element in an
    order that makes sense to you.
 
 The first approach could be precise and thorough, but it would also be difficult to follow.
 Visualizing how things are supposed to look would be difficult, as would understanding the
 full consequences of any change you make. The second approach, on the other hand, conveys the
 same information in a way that is both technically correct and understandable for a human. It's
 more likely to be executed correctly and easier to edit.
 
 Code is the same way. While we could write every program as a long series of functions and conditionals,
 only using the types that come with the language, it would be hard for a human to read. Code that's
 hard to read is also hard to write and edit. Therefore, we could use a blueprint. We could use a
 sensible way of laying out information that is understood by both the compiler and us humans.
 
 Enter classes. Functioning like blueprints for code, classes let us wrap of constants, variables,
 functions and comments into a discrete package, named something that tells us what the class does.
 If we need to record information about what Reebok sells, we might make a class called 'Shoe' that
 uses code to describe the concept of a shoe. If we want to bundle the functions that we use to
 communicate with a server, we might make a class called 'ServerCommunicationManager'. Whether it's
 a physical item or an abstract concept, we can use classes to isolate and describe something.
 
 Study this project and Swift's documentation on classes (linked above in this file) to learn how Swift
 classes work. Reading will get you pretty far, but be sure to write some code yourself. Experiment
 with creating a class and changing its properties. The accompanying lecture should help you fill
 in the gaps, but there's no substitute for hands-on experience.
 
 And if you have any questions, don't be afraid to ask!
 
 */