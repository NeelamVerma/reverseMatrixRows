//
//  Matrix.swift
//  reverseMatrixRows
//
//  Created by Neelam Verma on 20/11/18.
//  Copyright © 2018 Neelam Verma. All rights reserved.
//

import UIKit

struct Matrix {
    let rows , columns: Int
    var grid: [Int]
    
    fileprivate init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        self.grid = Array(repeating: 0, count: rows * columns)
    }
    
    subscript(rowIndex: Int , columnIndex: Int) -> Int {
        get {
            return grid[rowIndex * columns + columnIndex]
        }
        set (newValue) {
            grid[rowIndex * columns + columnIndex] = newValue
        }
    }
    
    init?(input : String){
        
        if input == "" { return nil }
        
        let rows = input.components(separatedBy: .newlines)
        let numberOfRows = rows.count
        let digitsArray = rows[0].components(separatedBy: ",")
        let numberOfColumns = digitsArray.count
        
        var matrix = Matrix(rows: numberOfRows, columns: numberOfColumns)
        
        for i in 0..<rows.count {
            let digitsArray = rows[i].components(separatedBy: ",")
            for j in 0..<digitsArray.count {
                let value = digitsArray[j].trimmingCharacters(in: .whitespacesAndNewlines)
                
                if let num = Int(value) {
                    if j > numberOfColumns - 1 {
                        return nil
                    }
                    
                    matrix[i,j] = num
                }
                else {
                    return nil
                }
            }
        }
        self.rows = matrix.rows
        self.columns = matrix.columns
        self.grid = matrix.grid
    }
}
