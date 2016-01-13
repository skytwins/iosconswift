//: Playground - noun: a place where people can play

import UIKit

for i in 0...100 {
    if i % 5 == 0 {
        println("\(i) Bingo!!!")
    }
    
    if i % 2 == 0 {
        println("\(i) Par!!!")
    }
    else {
        println("\(i) impar!!!")
    }
    
    if i >= 30 && i <= 40 {
        println("\(i) Viva Swift!!!")
    }
    
}
