//
//  MatrixViewModel
//  reverseMatrixRows
//
//  Created by Neelam Verma on 20/11/18.
//  Copyright © 2018 Neelam Verma. All rights reserved.
//

import UIKit

class MatrixViewModel: NSObject {
    
    func reverseMatrixRows(mat: Matrix) -> String{
        var inputMatrix = mat
        for row in 0..<inputMatrix.rows {
            for col in 0..<Int(inputMatrix.columns/2) {
                let a = inputMatrix[row, col]
                inputMatrix[row, col] = inputMatrix[row, (inputMatrix.columns - col - 1)]
                inputMatrix[row, (inputMatrix.columns - col - 1)] = a
            }
        }
        
        return giveMeResultToDisplay(inputMat: inputMatrix)
    }
    
    fileprivate func giveMeResultToDisplay(inputMat: Matrix) -> String {
        var outputString = ""
        for i in 0..<inputMat.rows {
            for j in 0..<inputMat.columns {
                outputString += String(inputMat[i,j])
                outputString += ","
            }
            outputString += "\n"
        }
        return outputString
    }
}
