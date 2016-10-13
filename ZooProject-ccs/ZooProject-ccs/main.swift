//
//  main.swift
//  ZooProject-ccs
//
//  Created by Christopher Stanley on 10/13/16.
//  Copyright © 2016 Christopher Stanley. All rights reserved.
//

import Foundation

let interactive = Interactive()
let io = Io()
let animal = Animal()
let zoo = Zoo()
let bird = Bird()


private var done: Bool = false

io.writeMessage("**** ZOO ****")
io.writeMessage("Enter 'animal' or 'person'")

while !done {
    var currentInput: String = ""
    currentInput = io.getInput()
    var totalAnimals = zoo.birdList + zoo.fishList + zoo.landList
    totalAnimals.sort()
    
    switch currentInput {
    case "animal":
        io.writeMessage("'view all' 'add bird' 'add fish' 'add land'")
        var currentInput: String = ""
        currentInput = io.getInput()
        switch currentInput {
        case "view all":
            for animal in totalAnimals {
                print(animal)
            }
        case "add bird":
            zoo.addBird()
            
        case "add fish":
            zoo.addFish()
            
        case "add land":
            zoo.addLand()
        case "quit":
            done = true
            
        default:
            print("Invalid Input")
        }
    case "person":
        io.writeMessage("'view all' 'add employee' 'add visitor'")
        var currentInput: String = ""
        currentInput = io.getInput()
        var totalPeople = zoo.visitorList + zoo.employeeList
        totalPeople.sort()
        
        switch currentInput {
        case "view all":
            for people in totalPeople {
                print(people)
            }
        
        case "add employee":
            zoo.addEmployee()
            
        case "add visitor":
            zoo.addVisitor()
            
        default:
            print("Invalid Input")
        }
    case "quit":
        done = true
    default:
        print("Invalid Input")
    }
}

print("Exiting...")
