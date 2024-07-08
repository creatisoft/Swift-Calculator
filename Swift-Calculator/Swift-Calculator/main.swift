//
//  main.swift
//  Swift-Calculator
//
//  Created by Christopher on 6/17/24.
//  https://www.creatisoft.com
//  https://www.twitter.com/creatisoft
//


import Foundation

//declaring my variables
var inputSelection:String?
var inputNumber01:String?
var inputNumber02:String?
var answer:Int = 0

//loop will exit if the we quit
var isProgramRunning:Bool = true;


//I could have done this another way, but I'm leaving it as is
func Addition(){
    
    var result = 0
    print("Please enter number 1: ")
    inputNumber01 = readLine()
    
    print("Please enter number 2: ")
    inputNumber02 = readLine()
    
    print("The answer is: ")
    
    //I wasn't sure how to convert the string to a number because
    // doing a typecast of Int(input) didn't work, so I instead I forcedunwrapped it
    //with the help of Xcode suggestion
    //I am unaware at the moment of another way that is probably safer, and easier.

    
    result = Int(inputNumber01!)! + Int(inputNumber02!)!
    print(result)
    
}

func Subtraction(){
    
    var result = 0
    print("Please enter number 1: ")
    inputNumber01 = readLine()
    
    print("Please enter number 2: ")
    inputNumber02 = readLine()
    
    print("The answer is: ")
    result = Int(inputNumber01!)! - Int(inputNumber02!)!
    print(result)
    
}

func Divide(){
    
    var result = 0
    print("Please enter number 1: ")
    inputNumber01 = readLine()
    
    print("Please enter number 2: ")
    inputNumber02 = readLine()
    
    print("The answer is: ")
    result = Int(inputNumber01!)! / Int(inputNumber02!)!
    print(result)
    
}

func Multiply(){
    
    var result = 0
    print("Please enter number 1: ")
    inputNumber01 = readLine()
    
    print("Please enter number 2: ")
    inputNumber02 = readLine()
    
    print("The answer is: ")
    result = Int(inputNumber01!)! * Int(inputNumber02!)!
    print(result)
    
}

print("Welcome to Swift Calculator 0.1.0")
print("Created by: Christopher M. | Creatisoft.com")
print("===========================================")

print("A)DD | S)ubtract | D)ivide | M)ultiply")
print("=======================================")

print("Please select an option: ")

while( isProgramRunning == true ){
    
    //reading the user input
    inputSelection = readLine()
    
    //using a switchcase to get our selection
    switch inputSelection {
        
        case "a":
        Addition()
        break
        
        case "s":
        Subtraction()
        break
        
        case "d":
        Divide()
        break
        
        case "m":
        Multiply()
        break
        
        case "q":
        isProgramRunning = false
        break

        default:
        break
    }
    
    
    //ask for another selection
    print("A)DD | S)ubtract | D)ivide | M)ultiply")
    print("=======================================")

    print("Please select an option: ")
    
}


