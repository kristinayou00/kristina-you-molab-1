import UIKit

var greeting = "Hello, playground"

import Foundation

// swift must use index to access parts of string

//  let str = "/\\"
let str = "◍◎▩▩◊◊◍◎▩▩◊◊"
//let str = "▪️▪️🌑"
//  print("str", str)
//  print("str.count", str.count)
//  print("str offset 1", str[str.index(str.startIndex, offsetBy: 1)])

func charAt(_ str:String, _ offset:Int) -> String {
  let index = str.index(str.startIndex, offsetBy: offset)
  let char = str[index]
  return String(char)
}

//  print(charAt(str, 0))

let randomInt = Int.random(in: 0..<str.count)
//  print("randomInt", randomInt)

//  var nstr = ""
//  for _ in 0..<6 {
//    let randomInt = Int.random(in: 0..<str.count)
//    // print(index, "randomInt", randomInt)
//    nstr += charAt(str, randomInt)
//  }
//  print("nstr", nstr)

var serial = 0

func generateLine(_ n:Int) {
  var nstr = ""
  for _ in 0..<n {
    let offset = (serial % str.count)
    serial += 1
    nstr += charAt(str, offset)
  }
  print(nstr)
}

//  generateLine(10)

func generateBlock(_ n: Int) {
  for _ in 0..<n {
    generateLine(n)
  }
}

generateBlock(52)
print("")
generateBlock(52)
print("")
generateBlock(52)
