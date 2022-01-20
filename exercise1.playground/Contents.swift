import UIKit


/*
 Задание 1
 
 
 Даны координаты трех точек в трехмерной прямоугольной системе координат. Найдите расстояние, которое необходимо преодолеть для того, чтобы переместиться из первой точки во вторую, а потом из второй в третью при условии, что между ними нет препятствий.
*/


func coordinates(x1: Double, x2: Double, x3: Double, y1: Double, y2: Double, y3: Double, z1: Double, z2: Double, z3: Double, prepyatstviye: Bool){
    var d: Double
    var d1: Double
    if prepyatstviye == false {
         d = sqrt(pow((x2-x1), 2) + pow((y2-y1), 2) + pow((z2-z1), 2))
         d1 = sqrt(pow((x3-x2), 2) + pow((y3-y2), 2) + pow((z3-z2), 2))
        print("distance between first and second points = \(d)")
        print("distance between second and third points = \(d1)")
        
    } else {
        print("somethong went wrong")
    }
}

coordinates(x1: 5.0, x2: 1, x3: 3, y1: 2.0, y2: 2, y3: 0, z1: 6, z2: 0, z3: 3, prepyatstviye: true)


/*
 Задание 2


 При помощи объектно-ориентированного подхода создать свой маленький кусочек дикой природы. В нём должны присутствовать, как минимум, 4 утки, 7 колибри, 3 медведя, 5 волков, павлин и 2 бобра. Все обитатели должны уметь делать базовые вещи такие как ходить, летать, есть (если это могут делать их прототипы из реальной жизни, например, очевидно, что медведь не умеет летать, а колибри ходить). Также необходимо придумать и реализовать механизм контроля текущего занятия животного (т.е. того, чем оно сейчас занимается: ест, спит, перемещается, охотится и т.п.).

 */
enum Motion {
    case Fly, Walk, Swim, FlyAndWalk, FlyAndSwim, WalkAndSwim, FlyWalkAndSwim
    
    init(){
        self = .Fly
        self = .Walk
        self = .Swim
        self = .FlyAndWalk
        self = .FlyAndSwim
        self = .WalkAndSwim
        self = .FlyWalkAndSwim
    }
//    func chooseMoving() {
//        switch self {
//        case .Fly:
//            print("I can fly")
//        case .Walk:
//            print("I can walk")
//        case .Swim:
//            print("I can swim")
//        case .FlyAndWalk:
//            print("I can fly and walk")
//        case .FlyAndSwim:
//            print("I can fly and swim")
//        case .WalkAndSwim:
//            print("I can walk and swim")
//        case .FlyWalkAndSwim:
//            print("I can fly, walk and swim")
//        default:
//            print("I can't fly walk and swim")
//
//
//        }
    }
    

protocol Animal{
    var name: String { get }
    var age: Int { get }
    var colour: String { get }
}

protocol BasicPropertiesOfAnimals{
//    var kindOfAnimal: String{ get }
//    var name: String { get }
//    var age: Int { get }
//    var colour: String { get }
    var move: Motion { get }
    mutating func eatingNow(eatingNow: Bool) -> Bool
//    mutating func motion(text: String) -> String
    mutating func motionNow(motionNow: Bool) -> Bool
    mutating func sleepingNow(sleepingNow: Bool) -> Bool
    mutating func nowMovemingForFood(nowMovemingForFood: Bool) -> Bool
}



struct Duck: BasicPropertiesOfAnimals{
    var move: Motion
    var kindOfAnimal: String
    var name: String
    var age: Int
    var colour: String

    
    
    
    mutating func eatingNow(eatingNow: Bool) -> Bool {
        
        return eatingNow
    }
    
    mutating func motionNow(motionNow: Bool) -> Bool {
        
        return motionNow
    }
    
    mutating func sleepingNow(sleepingNow: Bool) -> Bool {
        
        return sleepingNow
    }
    
    mutating func nowMovemingForFood(nowMovemingForFood: Bool) -> Bool {
        
        return nowMovemingForFood
    }
    
}

struct Hummingbird: BasicPropertiesOfAnimals{
    var move: Motion
    var kindOfAnimal: String
    var name: String
    var age: Int
    var colour: String
    
    mutating func eatingNow(eatingNow: Bool) -> Bool {
        return eatingNow
    }
    
    mutating func motionNow(motionNow: Bool) -> Bool {
        return motionNow
    }
    
    mutating func sleepingNow(sleepingNow: Bool) -> Bool {
        return sleepingNow
    }
    
    mutating func nowMovemingForFood(nowMovemingForFood: Bool) -> Bool {
        return nowMovemingForFood
    }
    
}

struct Bear: BasicPropertiesOfAnimals{
    var kindOfAnimal: String
    var move: Motion
    var name: String
    var age: Int
    var colour: String
    
    mutating func eatingNow(eatingNow: Bool) -> Bool {
        return eatingNow
    }
    
    mutating func motionNow(motionNow: Bool) -> Bool {
        return motionNow
    }
    
    mutating func sleepingNow(sleepingNow: Bool) -> Bool {
        return sleepingNow
    }
    
    mutating func nowMovemingForFood(nowMovemingForFood: Bool) -> Bool {
        return nowMovemingForFood
    }
    
    
}

struct Wolf: BasicPropertiesOfAnimals{
    var kindOfAnimal: String
    var move: Motion
    var name: String
    var age: Int
    var colour: String
    
    mutating func eatingNow(eatingNow: Bool) -> Bool {
        return eatingNow
    }
    
    mutating func motionNow(motionNow: Bool) -> Bool {
        return motionNow
    }
    
    mutating func sleepingNow(sleepingNow: Bool) -> Bool {
        return sleepingNow
    }
    
    mutating func nowMovemingForFood(nowMovemingForFood: Bool) -> Bool {
        return nowMovemingForFood
    }

}

struct Peacock: BasicPropertiesOfAnimals{
    var kindOfAnimal: String
    var move: Motion
    var name: String
    var age: Int
    var colour: String
    
    
    
     mutating func eatingNow(eatingNow: Bool) -> Bool {
        return eatingNow
    }
    
    mutating func motionNow(motionNow: Bool) -> Bool {
        return motionNow
    }
    
    mutating func sleepingNow(sleepingNow: Bool) -> Bool {
        return sleepingNow
    }
    
    mutating func nowMovemingForFood(nowMovemingForFood: Bool) -> Bool {
        return nowMovemingForFood
    }
   
}


struct Beaver: BasicPropertiesOfAnimals{
    var kindOfAnimal: String
    var move: Motion
    var name: String
    var age: Int
    var colour: String
    
    mutating func eatingNow(eatingNow: Bool) -> Bool {
        return eatingNow
    }
    
    mutating func motionNow(motionNow: Bool) -> Bool {
        return motionNow
    }
    
    mutating func sleepingNow(sleepingNow: Bool) -> Bool {
        return sleepingNow
    }
    
    mutating func nowMovemingForFood(nowMovemingForFood: Bool) -> Bool {
        return nowMovemingForFood
    }

}

var d = Duck(move: Motion.FlyWalkAndSwim, kindOfAnimal: "Duck", name: "duck1", age: 1, colour: "white")//, motionOfDuck: Motion.FlyWalkAndSwim)
//d.chooseMovingOfDuck
//d.motionOfDuck
d.eatingNow(eatingNow: false)
d.motionNow(motionNow: true)
d.nowMovemingForFood(nowMovemingForFood: true)

var d1 = Duck(move: Motion.FlyWalkAndSwim, kindOfAnimal: "Duck", name: "duck2", age: 2, colour: "black")
d1.eatingNow(eatingNow: true)
d1.motionNow(motionNow: false)
d1.nowMovemingForFood(nowMovemingForFood: false)

var d2 = Duck(move: Motion.WalkAndSwim, kindOfAnimal: "Duck", name: "duck3", age: 3, colour: "blue")
d2.eatingNow(eatingNow: false)
d2.motionNow(motionNow: true)
d2.nowMovemingForFood(nowMovemingForFood: false)

var d3 = Duck(move: Motion.Walk, kindOfAnimal: "Duck", name: "duck4", age: 4, colour: "gray")
d3.eatingNow(eatingNow: false)
d3.motionNow(motionNow: false)
d3.nowMovemingForFood(nowMovemingForFood: false)


var h = Hummingbird(move: Motion.Fly, kindOfAnimal: "Hummingbird", name: "hummingbird1", age: 1, colour: "white")
h.eatingNow(eatingNow: true)
h.motionNow(motionNow: false)
h.nowMovemingForFood(nowMovemingForFood: false)

var h1 = Hummingbird(move: Motion.Fly, kindOfAnimal: "Hummingbird", name: "hummingbird2", age: 2, colour: "black")
h1.eatingNow(eatingNow: false)
h1.motionNow(motionNow: true)
h1.nowMovemingForFood(nowMovemingForFood: true)

var h2 = Hummingbird(move: Motion.Fly, kindOfAnimal: "Hummingbird", name: "hummingbird3", age: 3, colour: "yellow")
h2.eatingNow(eatingNow: false)
h2.motionNow(motionNow: true)
h2.nowMovemingForFood(nowMovemingForFood: false)

var h3 = Hummingbird(move: Motion.Fly, kindOfAnimal: "Hummingbird", name: "hummingbird4", age: 4, colour: "green")
h3.eatingNow(eatingNow: true)
h3.motionNow(motionNow: true)
h3.nowMovemingForFood(nowMovemingForFood: false)

var h4 = Hummingbird(move: Motion.Fly, kindOfAnimal: "Hummingbird", name: "hummingbird5", age: 5, colour: "blue")
h4.eatingNow(eatingNow: false)
h4.motionNow(motionNow: true)
h4.nowMovemingForFood(nowMovemingForFood: true)

var h5 = Hummingbird(move: Motion.Fly, kindOfAnimal: "Hummingbird", name: "hummingbird6", age: 6, colour: "gray")
h5.eatingNow(eatingNow: false)
h5.motionNow(motionNow: true)
h5.nowMovemingForFood(nowMovemingForFood: true)

var h6 = Hummingbird(move: Motion.Fly, kindOfAnimal: "Hummingbird", name: "hummingbird7", age: 7, colour: "red")
h6.eatingNow(eatingNow: true)
h6.motionNow(motionNow: true)
h6.nowMovemingForFood(nowMovemingForFood: false)

var b = Bear(kindOfAnimal: "Bear", move: Motion.WalkAndSwim, name: "bear1", age: 1, colour: "brown")
b.eatingNow(eatingNow: true)
b.motionNow(motionNow: false)
b.nowMovemingForFood(nowMovemingForFood: false)

var b1 = Bear(kindOfAnimal: "Bear", move: Motion.WalkAndSwim, name: "bear2", age: 2, colour: "white")
b.eatingNow(eatingNow: false)
b.motionNow(motionNow: true)
b.nowMovemingForFood(nowMovemingForFood: true)

var b2 = Bear(kindOfAnimal: "Bear", move: Motion.Walk, name: "bear3", age: 3, colour: "black")
b2.eatingNow(eatingNow: false)
b2.motionNow(motionNow: true)
b2.nowMovemingForFood(nowMovemingForFood: false)

var w = Wolf(kindOfAnimal: "Wolf", move: Motion.WalkAndSwim, name: "wolf1", age: 1, colour: "white")
w.eatingNow(eatingNow: true)
w.motionNow(motionNow: false)
w.nowMovemingForFood(nowMovemingForFood: false)

var w1 = Wolf(kindOfAnimal: "Wolf", move: Motion.Walk, name: "wolf2", age: 2, colour: "black")
w1.eatingNow(eatingNow: false)
w1.motionNow(motionNow: true)
w1.nowMovemingForFood(nowMovemingForFood: false)

var w2 = Wolf(kindOfAnimal: "Wolf", move: Motion.WalkAndSwim, name: "wolf3", age: 3, colour: "gray")
w2.eatingNow(eatingNow: false)
w2.motionNow(motionNow: true)
w2.nowMovemingForFood(nowMovemingForFood: true)

var w3 = Wolf(kindOfAnimal: "Wolf", move: Motion.Walk, name: "wolf4", age: 4, colour: "brown")
w3.eatingNow(eatingNow: true)
w3.motionNow(motionNow: false)
w3.nowMovemingForFood(nowMovemingForFood: false)

var w4 = Wolf(kindOfAnimal: "Wolf", move: Motion.WalkAndSwim, name: "wolf5", age: 5, colour: "brown and black")
w4.eatingNow(eatingNow: false)
w4.motionNow(motionNow: true)
w4.nowMovemingForFood(nowMovemingForFood: false)

var p = Peacock(kindOfAnimal: "Peacock", move: Motion.Walk, name: "peacock1", age: 1, colour: "white")
p.eatingNow(eatingNow: true)
p.motionNow(motionNow: false)
p.nowMovemingForFood(nowMovemingForFood: false)

var beaver1 = Beaver(kindOfAnimal: "Beaver", move: Motion.Walk, name: "beaver1", age: 1, colour: "brown")
beaver1.eatingNow(eatingNow: true)
beaver1.motionNow(motionNow: false)
beaver1.nowMovemingForFood(nowMovemingForFood: false)

var beaver2 = Beaver(kindOfAnimal: "Beaver", move: Motion.Walk, name: "beaver2", age: 2, colour: "brown")
beaver2.eatingNow(eatingNow: false)
beaver2.motionNow(motionNow: true)
beaver2.nowMovemingForFood(nowMovemingForFood: true)


var wildlife: [BasicPropertiesOfAnimals] = [d, d1, d2, d3, h, h1, h2, h3, h4, h5, h6, b, b1, b2, w, w1, w2, w3, w4, p, beaver1, beaver2]

func tracing(wildlife: [BasicPropertiesOfAnimals]){
    for var animal in wildlife {
        print("kind of animal: \(animal.kindOfAnimal), name of animal: \(animal.name), age of animal: \(animal.age), colour of animal: \(animal.colour), how move this animal: \(animal.move), is now animal eating: \(animal.eatingNow(eatingNow: ))")
    }
}
