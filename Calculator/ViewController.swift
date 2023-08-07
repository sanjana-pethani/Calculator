//
//  ViewController.swift
//  Calculator
//
//  Created by sanjana pethani on 04/07/23.
//

//import UIKit
//
//class ViewController: UIViewController {
//
//
//    @IBOutlet var calcButton: [UIButton]!
//
//    @IBOutlet weak var numScreenLabel: UILabel!
//
//    var firstNumber: String = ""
//
//    var operation: String = ""
//
//    var secondNumber: String = ""
//
//    var haveResult: Bool = false
//
//    var resultNumber: String = ""
//
//    var numAfterResult: String = ""
//
//    @IBAction func add(_ sender: Any) {
//        operation = "+"
//    }
//
//    @IBAction func subtract(_ sender: Any) {
//        operation = "-"
//    }
//
//    @IBAction func multiply(_ sender: Any) {
//        operation = "*"
//    }
//
//    @IBAction func divide(_ sender: Any) {
//        operation = "/"
//    }
//
//    @IBAction func equals(_ sender: Any) {
//        resultNumber = String(doOpertion())
//        numScreenLabel.text = resultNumber
//        numAfterResult = ""
//    }
//
//
//
//    @IBAction func number1(_ sender: UIButton) {
//        if operation == "" {
//            firstNumber += String(sender.tag)
//            numScreenLabel.text = firstNumber // screen ma 1,2,3...... click thase
//        }
//
//        else if operation != "" && !haveResult {
//            secondNumber += String(sender.tag)
//            numScreenLabel.text = secondNumber
//        }
//        else if operation != "" && haveResult {
//            numAfterResult += String(sender.tag)
//            numScreenLabel.text = numAfterResult
//        }
//        else if operation != "" && haveResult {
//            numAfterResult += String (sender.tag)
//            numScreenLabel.text = numAfterResult
//        }
//    }
//
//    @IBAction func ACButton(_ sender: Any) {
//        firstNumber = ""
//
//        operation = ""
//
//        secondNumber = ""
//
//        haveResult = false
//
//        resultNumber = ""
//
//        numAfterResult = ""
//
//        numScreenLabel.text = "0"
//
//    }
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        for button in calcButton {
//           // button.layer.cornerRadius = button.frame.size.height / 2
//            button.layer.cornerRadius = button.frame.size.height / 2
//
//        }
//    }
//
//    func doOpertion() -> Double {
//        if operation == "+" {
//            if !haveResult {
//                haveResult = true
//                return Double(firstNumber)! + Double(secondNumber)!
//            }
//            else{
//                return Double(resultNumber)! + Double(numAfterResult)!
//            }
//
//        }
//        else if operation == "-" {
//            if !haveResult{
//                haveResult = true
//                return Double(firstNumber)! - Double (secondNumber)!
//
//            }
//            else {
//                return Double(resultNumber)! - Double(numAfterResult)!
//            }
//
//        }
//            else if operation == "*" {
//                if !haveResult{
//                    haveResult = true
//                    return Double(firstNumber)! * Double (secondNumber)!
//
//                }
//                else {
//                    return Double(resultNumber)! * Double(numAfterResult)!
//                }
//
//
//        }
//        else if operation == "/" {
//            if !haveResult{
//                haveResult = true
//                return Double(firstNumber)! / Double (secondNumber)!
//
//            }
//            else {
//                return Double(resultNumber)! / Double(numAfterResult)!
//            }
//    }
//        return 0
//    }
//}


//import UIKit
//
//class ViewController: UIViewController {
//
//    @IBOutlet var calcButton: [UIButton]!
//    @IBOutlet weak var numScreenLabel: UILabel!
//
//    var firstNumber: String = ""
//    var operation: String = ""
//    var secondNumber: String = ""
//    var haveResult: Bool = false
//    var resultNumber: String = ""
//    var numAfterResult: String = ""
//
//    @IBAction func add(_ sender: Any) {
//        operation = "+"
//    }
//
//    @IBAction func subtract(_ sender: Any) {
//        operation = "-"
//    }
//
//    @IBAction func multiply(_ sender: Any) {
//        operation = "*"
//    }
//
//    @IBAction func divide(_ sender: Any) {
//        operation = "/"
//    }
//
//    @IBAction func equals(_ sender: Any) {
//        resultNumber = String(doOperation())
//        numScreenLabel.text = resultNumber
//        numAfterResult = ""
//    }
//
//    @IBAction func numberButtonTapped(_ sender: UIButton) {
//        let buttonText = String(sender.tag)
//
//        if operation == "" {
//            firstNumber += buttonText
//            numScreenLabel.text = firstNumber
//        } else if operation != "" && !haveResult {
//            secondNumber += buttonText
//            numScreenLabel.text = secondNumber
//        } else if operation != "" && haveResult {
//            numAfterResult += buttonText
//            numScreenLabel.text = numAfterResult
//        }
//    }
//
//    @IBAction func ACButton(_ sender: Any) {
//        firstNumber = ""
//        operation = ""
//        secondNumber = ""
//        haveResult = false
//        resultNumber = ""
//        numAfterResult = ""
//        numScreenLabel.text = "0"
//    }
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        setupButtonStyles()
//    }
//
//    func setupButtonStyles() {
//        for button in calcButton {
//            button.layer.cornerRadius = button.frame.size.height / 2
//        }
//    }
//
//    func doOperation() -> Double {
//        if operation == "+" {
//            if !haveResult {
//                haveResult = true
//                return Double(firstNumber)! + Double(secondNumber)!
//            } else {
//                return Double(resultNumber)! + Double(numAfterResult)!
//            }
//        } else if operation == "-" {
//            if !haveResult {
//                haveResult = true
//                return Double(firstNumber)! - Double(secondNumber)!
//            } else {
//                return Double(resultNumber)! - Double(numAfterResult)!
//            }
//        } else if operation == "*" {
//            if !haveResult {
//                haveResult = true
//                return Double(firstNumber)! * Double(secondNumber)!
//            } else {
//                return Double(resultNumber)! * Double(numAfterResult)!
//            }
//        } else if operation == "/" {
//            if !haveResult {
//                haveResult = true
//                return Double(firstNumber)! / Double(secondNumber)!
//            } else {
//                return Double(resultNumber)! / Double(numAfterResult)!
//            }
//        }
//
//        return 0
//    }
//}


import UIKit
class ViewController: UIViewController {

    var firstNumber: String = ""
    
    var operation: String = ""
    
    var secondNumber: String = ""
    
    var haveResult: Bool = false
    
    var resultNumber: String = ""
    
    var numAfterResult: String = ""

    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet var calcButton: [UIButton]!

    override func viewDidLoad() {
        super.viewDidLoad()
        calculatorButtonsetUp()
    }

    private func calculatorButtonsetUp() {
        for button in calcButton {
            let corner = button.bounds.height / 2
            button.layer.cornerRadius = corner

        }
    }

    func doOperation() -> Double {
        if operation == "+" {
            if !haveResult {
                haveResult = true
                return Double(firstNumber)! + Double(secondNumber)!
            } else {
                return Double(resultNumber)! + Double(numAfterResult)!
            }
        } else if operation == "-" {
            if !haveResult {
                haveResult = true
                return Double(firstNumber)! - Double(secondNumber)!
            } else {
                return Double(resultNumber)! - Double(numAfterResult)!
            }
        } else if operation == "✕" {
            if !haveResult {
                haveResult = true
                return Double(firstNumber)! * Double(secondNumber)!
            } else {
                return Double(resultNumber)! * Double(numAfterResult)!
            }
        } else if operation == "%" {
            if !haveResult {
                haveResult = true
                return modulo(Double(firstNumber)!, Double(secondNumber)!)
            } else {
                return modulo(Double(resultNumber)!, Double(numAfterResult)!)
            }
        } else if operation == "÷" {
            if !haveResult {
                haveResult = true
                return Double(firstNumber)! / Double(secondNumber)!
            } else {
                return Double(resultNumber)! / Double(numAfterResult)!
            }
        } else if operation == "+/-" {
            if !haveResult {
                haveResult = true
                return -Double(firstNumber)!
            } else {
                return -Double(resultNumber)!
            }
        }
        return 0
    }

    func modulo(_ dividend: Double, _ divisor: Double) -> Double {
        let quotient = dividend / divisor
        let roundedQuotient = Double(Int(quotient))
        return dividend - (roundedQuotient * divisor)
    }

    @IBAction func tappedNumber(_ sender: UIButton) {
        if operation == "" {
            firstNumber += String(sender.tag)
            numberLabel.text = firstNumber
        } else if operation != "" && !haveResult {
            secondNumber += String(sender.tag)
            numberLabel.text = secondNumber
        } else if operation != "" && haveResult {
            numAfterResult += String(sender.tag)
            numberLabel.text = numAfterResult
        }
    }

    @IBAction func tappedClearButton(_ sender: UIButton) {
        firstNumber = "0"
        operation = ""
        secondNumber = "0"
        haveResult = false
        resultNumber = ""
        numAfterResult = ""

        numberLabel.text = "0"
    }

    @IBAction func tappedPercentageButton(_ sender: UIButton) {
        operation = "%"
    }

    @IBAction func tappedDivideButton(_ sender: UIButton) {
        operation = "÷"
    }

    @IBAction func tappedMultiplyButton(_ sender: UIButton) {
        operation = "✕"
    }

    @IBAction func tappedSunstrationButton(_ sender: UIButton) {
        operation = "-"
    }

    @IBAction func tappedAdditionButton(_ sender: UIButton) {
        operation = "+"

    }

   @IBAction func tappedEqualButton(_ sender: UIButton) {
       resultNumber = String(doOperation())
        let printNumArray = resultNumber.components(separatedBy: ".")
        if printNumArray[1] == "" {
            numberLabel.text = printNumArray[0]
        } else {
            numberLabel.text = resultNumber
        }
        numAfterResult = ""
    }

}




