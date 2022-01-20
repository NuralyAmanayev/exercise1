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
enum motion {
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
    



protocol BasicPropertiesOfAnimals{
    var name: String { get }
    var age: Int { get }
    var colour: String { get }
    mutating func eatingNow(eatingNow: Bool) -> Bool
//    mutating func motion(text: String) -> String
    mutating func motionNow(motionNow: Bool) -> Bool
    mutating func sleepingNow(sleepingNow: Bool) -> Bool
    mutating func NowMovemingForFood(NowMovemingForFood: Bool) -> Bool
}



struct Duck: BasicPropertiesOfAnimals{
    
    
    var name: String
    var age: Int
    var colour: String
    var motionOfDuck: motion
    
   
    mutating func eatingNow(eatingNow: Bool) -> Bool {
        
        return eatingNow
    }
    
//    mutating func motion(text: String) -> String{
//        var kindOfMove: String = "I can " + text
//
//        return kindOfMove
//    }
    
    mutating func motionNow(motionNow: Bool) -> Bool {
       
        return motionNow
    }
    
    mutating func sleepingNow(sleepingNow: Bool) -> Bool {
        
        return sleepingNow
    }
    
    mutating func NowMovemingForFood(NowMovemingForFood: Bool) -> Bool {
        
        return NowMovemingForFood
    }
    
    
    
}

var d = Duck(name: "d", age: 1, colour: "w", motionOfDuck: motion.FlyWalkAndSwim)
//d.chooseMovingOfDuck
d.motionOfDuck
d.eatingNow(eatingNow: false)
d.motionNow(motionNow: true)

