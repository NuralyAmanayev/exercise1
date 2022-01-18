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
        print(d)
        print(d1)
        
    } else {
        print("somethong went wrong")
    }
}

coordinates(x1: 5.0, x2: 1, x3: 3, y1: 2.0, y2: 2, y3: 0, z1: 6, z2: 0, z3: 3, prepyatstviye: false)
