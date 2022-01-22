import UIKit

/*
 Completed by: Аманаев Нурали
 
 Задание 1
 
 
 Даны координаты трех точек в трехмерной прямоугольной системе координат. Найдите расстояние, которое необходимо преодолеть для того, чтобы переместиться из первой точки во вторую, а потом из второй в третью при условии, что между ними нет препятствий.
*/


func coordinates(x1: Double, x2: Double, x3: Double, y1: Double, y2: Double, y3: Double, z1: Double, z2: Double, z3: Double){
    var d: Double
    var d1: Double
    
    d = sqrt(pow((x2-x1), 2) + pow((y2-y1), 2) + pow((z2-z1), 2))
    d1 = sqrt(pow((x3-x2), 2) + pow((y3-y2), 2) + pow((z3-z2), 2))
    print("distance between first and second points = \(d)")
    print("distance between second and third points = \(d1)")
        
}

coordinates(x1: 5.0, x2: 1, x3: 3, y1: 2.0, y2: 2, y3: 0, z1: 6, z2: 0, z3: 3)


/*
 Completed by: Аманаев Нурали
 
 Задание 2


 При помощи объектно-ориентированного подхода создать свой маленький кусочек дикой природы. В нём должны присутствовать, как минимум, 4 утки, 7 колибри, 3 медведя, 5 волков, павлин и 2 бобра. Все обитатели должны уметь делать базовые вещи такие как ходить, летать, есть (если это могут делать их прототипы из реальной жизни, например, очевидно, что медведь не умеет летать, а колибри ходить). Также необходимо придумать и реализовать механизм контроля текущего занятия животного (т.е. того, чем оно сейчас занимается: ест, спит, перемещается, охотится и т.п.).

 */

    

protocol Animal{
    var name: String { get }
    var age: Int { get }
    var colour: String { get }
    var currentState: String { get }
    func eat()
    func sleep()
    
}

protocol Walker{
    func walk()
}

protocol Flier{
    func fly()
}

protocol Swimmer{
    func swim()
}

protocol Hunter{
    func hunt()
}




class Duck: Animal, Walker, Flier, Swimmer {
    
    var currentState: String = ""
    
    var name: String = ""
    
    var age: Int = 0
    
    var colour: String = ""
    
    func eat() {
        currentState = "eating"
    }
    
    func walk() {
        currentState = "walking"
    }
    
    func fly() {
        currentState = "flying"
    }
    
    func swim() {
        currentState = "swimming"
    }
    func sleep() {
        currentState = "sleeping"
    }
    
    init(currentState: String, name: String, age: Int, colour: String) {
        self.currentState = currentState
        self.name = name
        self.age = age
        self.colour = colour
    }
    
}

class HummingBird: Animal, Flier {
    var currentState: String = ""
    
    var name: String = ""
    
    var age: Int = 0
    
    var colour: String = ""
    
    func eat() {
        currentState = "eating"
    }
    func fly() {
        currentState = "flying"
    }
    
    func sleep() {
        currentState = "sleeping"
    }
    
    init(currentState: String, name: String, age: Int, colour: String) {
        self.currentState = currentState
        self.name = name
        self.age = age
        self.colour = colour
    }
    
}

class Bear: Animal, Walker, Swimmer, Hunter{
    var name: String = ""
    
    var age: Int = 0
    
    var colour: String = ""
    
    var currentState: String = ""
    
    func eat() {
            currentState = "eating"
    }
    
    func walk() {
        currentState = "walking"
    }
    
    func swim() {
        currentState = "swimming"
    }
    
    func hunt() {
        currentState = "hunting"
    }
    
    func sleep() {
        currentState = "sleeping"
    }
    
    init(currentState: String, name: String, age: Int, colour: String) {
        self.currentState = currentState
        self.name = name
        self.age = age
        self.colour = colour
    }

}


class Wolf: Animal, Walker, Swimmer, Hunter{
    var name: String = ""
    
    var age: Int = 0
    
    var colour: String = ""
    
    var currentState: String = ""
    
    func eat() {
        currentState = "eating"
    }
    
    func walk() {
        currentState = "walking"
    }
    
    func swim() {
        currentState = "swimming"
    }
    
    func hunt() {
        currentState = "hunting"
    }
    
    func sleep() {
        currentState = "sleeping"
    }
    
    init(currentState: String, name: String, age: Int, colour: String) {
        self.currentState = currentState
        self.name = name
        self.age = age
        self.colour = colour
    }


}


class Peacock: Animal, Walker {
    var name: String = ""
    
    var age: Int = 0
    
    var colour: String = ""
    
    var currentState: String = ""
    
    func eat() {
        currentState = "eating"
    }
    
    func walk() {
        currentState = "walking"
    }
    
    func sleep() {
        currentState = "sleeping"
    }
    
    init(currentState: String, name: String, age: Int, colour: String) {
        self.currentState = currentState
        self.name = name
        self.age = age
        self.colour = colour
    }

}

class Beaver: Animal, Walker, Swimmer{
    
    var name: String = ""
    
    var age: Int = 0
    
    var colour: String = ""
    
    var currentState: String = ""
    
    func eat() {
        currentState = "eating"
    }
    
    func walk() {
        currentState = "walking"
    }
    
    func sleep() {
        currentState = "sleeping"
    }
    
    func swim() {
        currentState = "swimming"
    }
    
    init(currentState: String, name: String, age: Int, colour: String) {
        self.currentState = currentState
        self.name = name
        self.age = age
        self.colour = colour
    }

}

class Nature{
    var animals = [Animal]()
    
    init(animals: [Animal]) {
        self.animals = animals
    }
    
    func tracing() {
        for animal in self.animals {
            print("name of animal: \(animal.name), age of animal: \(animal.age), colour of animal: \(animal.colour), current state of this animal: \(animal.currentState)")
        }
    }


}



var duck1 = Duck(currentState: "walking", name: "Duck1", age: 1, colour: "white")
duck1.eat()
var duck2 = Duck(currentState: "walking", name: "Duck2", age: 2, colour: "black")
duck2.swim()
var duck3 = Duck(currentState: "walking", name: "Duck3", age: 3, colour: "blue-gray")
duck3.fly()
var duck4 = Duck(currentState: "walking", name: "Duck4", age: 4, colour: "gray")
duck4.sleep()


var hummingBird1 = HummingBird(currentState: "fly", name: "HummingBird1", age: 1, colour: "green")
hummingBird1.eat()
var hummingBird2 = HummingBird(currentState: "fly", name: "HummingBird2", age: 2, colour: "blue")
hummingBird1.sleep()
var hummingBird3 = HummingBird(currentState: "fly", name: "HummingBird3", age: 3, colour: "mixed colour")
var hummingBird4 = HummingBird(currentState: "fly", name: "HummingBird4", age: 4, colour: "mixed colour")
var hummingBird5 = HummingBird(currentState: "fly", name: "HummingBird5", age: 5, colour: "mixed colour")
hummingBird5.eat()
var hummingBird6 = HummingBird(currentState: "fly", name: "HummingBird6", age: 6, colour: "mixed colour")
var hummingBird7 = HummingBird(currentState: "fly", name: "HummingBird7", age: 7, colour: "mixed colour")
hummingBird7.sleep()


var bear1 = Bear(currentState: "walking", name: "Bear1", age: 1, colour: "brown")
var bear2 = Bear(currentState: "walking", name: "Bear2", age: 2, colour: "white")
bear2.swim()
var bear3 = Bear(currentState: "walking", name: "Bear3", age: 3, colour: "black")
bear3.hunt()


var wolf1 = Wolf(currentState: "walking", name: "Wolf1", age: 1, colour: "white")
var wolf2 = Wolf(currentState: "walking", name: "Wolf2", age: 2, colour: "black")
wolf2.hunt()
var wolf3 = Wolf(currentState: "walking", name: "Wolf3", age: 3, colour: "gray")
wolf3.eat()
var wolf4 = Wolf(currentState: "walking", name: "Wolf4", age: 4, colour: "brown")
wolf4.sleep()
var wolf5 = Wolf(currentState: "walking", name: "Wolf5", age: 5, colour: "black")
wolf5.sleep()




var peacock1 = Peacock(currentState: "walking", name: "Peacock1", age: 1, colour: "mixed color")


var beaver1 = Beaver(currentState: "walking", name: "Beaver1", age: 1, colour: "brown")
var beaver2 = Beaver(currentState: "walking", name: "Beaver2", age: 2, colour: "brown")
beaver2.eat()


var wildlife = Nature(animals: [duck1, duck2, duck3, duck4, hummingBird1, hummingBird2, hummingBird3, hummingBird4, hummingBird5, hummingBird6, hummingBird7, bear1, bear2, bear3, wolf1, wolf2, wolf3, wolf4, wolf5, peacock1, beaver1, beaver2])

wildlife.tracing()


