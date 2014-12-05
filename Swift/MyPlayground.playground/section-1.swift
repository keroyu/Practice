// Playground - noun: a place where people can play

import UIKit

func findApt (aptNumber: String) -> String? {
    
    let aptNumbers = ["101","102","103"]
    for tempAptNumber in aptNumbers {
        if ( tempAptNumber == aptNumber ){
            return aptNumber
        }
    }
    return nil
}

if let culprit = findApt("101") {
    println("Apt Found")
}

