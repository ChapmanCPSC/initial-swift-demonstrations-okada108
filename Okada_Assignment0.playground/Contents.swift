//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//everything is an object 

var difference = 2 - 1
var x = 1.successor()

// basic variables 

let three = 3
var four = 4

four = three

var two = 2
var one = 1
one = two

//basic functions 

func addnum()
{
    let x = 5
    let y = 10
    
   let z = x + y
    print ((z))
    
}
//basic function invocation
addnum()

//basic class 
class Dog
{
    var name = " "
    var age = 0
    func bark()
    {
        print ("woof")
    }
}

//object instantiation 
var d1 = Dog()
d1.name = "Doug"
d1.age = 5
d1.bark()

//void functions 

func sayHi()
{
    print("hello")
}

//default parameters 


func add(x:Int = 1, y:Int = 2,  times:Int = 1)
{
    var z = 0
    var i = 0
    while i < times
    {
        z = x+y
        i+=1
        
    }
    print ((z))
}

add(2, y:2, times: 2)


//variadic parameters 

func addNumbers(numbs: Int...) -> Int
{
    var x = 0
    for item in numbs
    {
        x+=item
    }
    return x
    
}


//inout parameters 

func lastToFirst(inout first: String, inout with last: String )
{
    var first_name = first
    first = last
    last = first_name
    
}

var first_n = "Bryan"
var last_n = "Okada"
lastToFirst(&first_n, with: &last_n)
print (first_n)
print (last_n)




//functions as values 

func math(Function: (x:Int, y: Int) -> Int) -> Int
{
    var answer = Function(x: 2, y: 3)
    return answer
    

}

func findExpon (numb: Int, numb_ex: Int)-> Int
{
    return numb^numb_ex;
}

math(findExpon)

//passing in anonymous function 


math { (x,y)-> Int in
    (x+y)/2
}

//defining anonymous functions
let anon_avg =
{
    (x:Int, y: Int) -> Int in
    return (x+y)/2

}

math(anon_avg)


//implicit variables 

var p = 10

p.dynamicType

//explicit variable 

var name: String = "Bryan Okada"

name.dynamicType

//figure out if number is between 0-100

let random = rand()


var isLow : Bool
{
if random <= 100
{
    return true
}
else
{
    return false
}
}

//set and get
class Students
{
    private var _totalStudents = 32
    var totalStudents: Int {
        get{
            return self._totalStudents
        }
        set{
            if newValue > 30
            {
                print("You cannot fit this many students ")
            }
            else
            {
                self._totalStudents = newValue
            }
        }
        
    }
}

//didSet and willSet
class Passcode
{
    var passcode: Int = 0{
        willSet {
            print("Setting the passcode to  \(newValue)")
        }
        didSet{
            print("Changed the passcode from \(oldValue) to \(self.passcode)")
        }
    }
}

var pass1 = Passcode()
pass1.passcode = 1234

//String interpolation 

var myPass = "My passcode is \(pass1)"
for c in myPass.characters{
    print (c)
}

//range type 

for n in 1...20
{
    print (n)
}

//tuples 
var (price, tax ) = (10.0, 0.10)
price
tax

func findTotal (price: Double, tax: Double)-> Double
{
    let total = (price*tax)+price
    return total
}

findTotal(price,tax: tax)













