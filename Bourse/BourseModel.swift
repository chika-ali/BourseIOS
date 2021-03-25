//
//  BourseModel.swift
//  Bourse
//
//  Created by    CHIKA Ali on 11/03/2021.
//

import Foundation
//creaation de mon structure
struct BourseModdel:Identifiable {
    var id=UUID()
    let name:String
    let code:String
    let image:String
    let value:Double
    let variation:Double

}

// creation de me variables
let var1:BourseModdel=BourseModdel(name: "Apple", code: "AAPL", image: "aapl", value: 120.04, variation: -1.04)
let var2:BourseModdel=BourseModdel(name: "The Boing Company", code: "BA", image: "ba", value: 224.25, variation: 13.64)
let var3:BourseModdel=BourseModdel(name: "The Walt Disney Compagny", code: "DIS", image: "dis", value: 26.95, variation: 1.35)
let var4:BourseModdel=BourseModdel(name: "General Electric Compagny", code: "GE", image: "ge", value:13.22 , variation: -0.78)

let tableauBourse:[BourseModdel]=[
    var1,
    var2,
    var3,
    var4

]
