//
//  ViewController.swift
//  FirstUnitTest
//
//  Created by khoirunnisa' rizky noor fatimah on 05/10/21.
//

import UIKit

enum Direction {
    case up
    case down
    case left
    case right
}
typealias Point = (x: Int, y: Int)


class ViewController: UIViewController {
    
    @IBOutlet weak var firstNumberTextField: UITextField!
    @IBOutlet weak var secondNumberTextField: UITextField!
    @IBOutlet weak var resultCount: UILabel!
    @IBOutlet weak var directionLabel: UILabel!
    
    var firstNumber: Int = 0
    var secondNumber: Int = 0
    var directionArray: [Direction] = []
    var currentPoint: Point = (x: 0, y: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        directionLabel.text = ""
        
    }
    @IBAction func addDirection(_ sender: UIButton) {
        currentPoint = (x: firstNumber, y: secondNumber)
        switch sender.tag {
        case 0:
            directionArray.append(.up)
            directionLabel.text! += "up, "
        case 1:
            directionArray.append(.right)
            directionLabel.text! += "right, "
        case 2:
            directionArray.append(.down)
            directionLabel.text! += "down, "
        case 3:
            directionArray.append(.left)
            directionLabel.text! += "left, "
        default:
            break
        }
        convertTextFieldToInt()
        for direction in directionArray {
            currentPoint = moving(initial_location: currentPoint, [direction])
            resultCount.text = "\(currentPoint)"
        }
    }
    
    
    @IBAction func countSumOrTripleSum(_ sender: UIButton) {
        convertTextFieldToInt()
        resultCount.text = "\(sum_or_triple_sum(a: firstNumber, b: secondNumber))"
    }
    
    @IBAction func countMakes10(_ sender: UIButton) {
        convertTextFieldToInt()
        resultCount.text = "\(makes10(a: firstNumber, b: secondNumber))"
    }
    
    @IBAction func countMaxOrZero(_ sender: UIButton) {
        convertTextFieldToInt()
        resultCount.text = "\(max_or_zero(a: firstNumber, b: secondNumber))"
    }
    
    func sum_or_triple_sum(a :Int, b : Int) -> Int{
        if (a == b) {
            return 3 * (a + b)
        } else{
            return a + b
        }
    }
    
    func makes10(a :Int, b: Int) -> Bool {
        // write your code here
        let sum = a + b
        if (a == 10) || (b == 10) || (sum == 10) {
            return true
        } else {
            return false
        }
    }
    
    func max_or_zero(a :Int, b: Int) -> Int {
        var max = 0
        // write your code here
        if (a > b) {
            max = a
        } else if (a < b) {
            max = b
        } else if (a == b) {
            max = 0
        }
        return max
    }
    
    func moving(initial_location: Point, _ steps: [Direction]) -> Point {
        // write your code here
        var xPoint = initial_location.x
        var yPoint = initial_location.y
        for step in steps {
            switch step {
            case .right:
                xPoint += 1
            case .left:
                xPoint -= 1
            case .up:
                yPoint += 1
            case .down:
                yPoint -= 1
            }
        }
        return Point(x: xPoint, y: yPoint)
    }
    
    func convertTextFieldToInt() {
        if let firstNumberText = firstNumberTextField.text {
            firstNumber = (firstNumberText as NSString).integerValue
        }
        if let secondNumberText = secondNumberTextField.text {
            secondNumber = (secondNumberText as NSString).integerValue
        }
    }
}

