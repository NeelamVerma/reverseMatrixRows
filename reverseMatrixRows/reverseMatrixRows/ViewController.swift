//
//  ViewController.swift
//  reverseMatrixRows
//
//  Created by Neelam Verma on 20/11/18.
//  Copyright © 2018 Neelam Verma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputMatrixTextView: UITextView!
    @IBOutlet weak var reverseMatrixtextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func reverseClickAction(_ sender: Any) {
        guard let input = createTheInputMatrix(arrString: inputMatrixTextView.text) else {
            let alert = UIAlertController.init(title: "Error", message: "Invalid Matrix", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
            self.present(alert, animated: true, completion: nil)
            return
        }
        reverseMatrixtextView.text = reverseMatrixRows(mat: input).giveMeStringToDisplay()
    }
    
    @IBAction func resetForm(_ sender: Any) {
        inputMatrixTextView.text = ""
        reverseMatrixtextView.text = ""
    }
    
    func createTheInputMatrix(arrString: String) -> Matrix? {
        return Matrix(input: arrString)
    }
    
    func reverseMatrixRows(mat: Matrix) -> Matrix {
        for row in 0..<mat.rows {
            for col in 0..<Int(mat.columns/2) {
                let a = mat[row, col]
                mat[row, col] = mat[row, (mat.columns - col - 1)]
                mat[row, (mat.columns - col - 1)] = a
            }
        }
        return mat
    }
}

