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
        guard let inputMatrix = Matrix(input: inputMatrixTextView.text) else {
            let alert = UIAlertController.init(title: "Error", message: "Invalid Matrix", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
            self.present(alert, animated: true, completion: nil)
            return
        }
        
        // Logic Model
        let matrixViewModel = MatrixViewModel()
        reverseMatrixtextView.text = matrixViewModel.reverseMatrixRows(mat: inputMatrix)
    }
    
    @IBAction func resetForm(_ sender: Any) {
        inputMatrixTextView.text = ""
        reverseMatrixtextView.text = ""
    }
}

