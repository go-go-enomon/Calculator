//
//  ViewController.swift
//  Calculator
//
//  Created by 榎本拓馬 on 2015/06/15.
//  Copyright (c) 2015年 榎本拓馬. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    
    var number:Int = 0
    var number2:Int = 0
    var number3:Int = 0
    var count:Int = 0
    
    var operation: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func plus() {
        label.text = String(number)
        operation = 1
        if count == 0 {
            number2 = number
            count = 1
        }
        number = 0
    }
    @IBAction func minus() {
        label.text = String(number)
        operation = 2
        if count == 0 {
            number2 = number
            count = 1
        }
        number = 0
    }
    @IBAction func multi() {
        label.text = String(number)
        operation = 3
        if count == 0 {
            number2 = number
            count = 1
        }
        number = 0
    }
    @IBAction func devided() {
        label.text = String(number)
        operation = 4
        if count == 0 {
            number2 = number
            count = 1
        }
        number = 0
    }
    
    @IBAction func equal() {
        number3 = number
        if operation == 1 {
            if count > 0 {
                number2 = number3 + number2
            }else {
                number2 = number2 + number
                count = count + 1
            }
        }else if operation == 2 {
            if count > 0 {
                number2 = number2 - number3
            }else {
                number2 = number2 - number
                count = count + 1
            }
        }else if operation == 3 {
            if count > 0 {
                number2 = number3 * number2
            }else {
                number2 = number2 * number
                count = count + 1
            }
        }else if operation == 4 {
            if count > 0 {
                number2 = number2 / number3
            }else {
                number2 = number2 / number
                count = count + 1
            }
        }
        label.text = String(number2)
        number = number2
    }
    
    @IBAction func select1() {
        number = number*10+1
        label.text = String(number)
    }
    @IBAction func select2() {
        number = number*10+2
        label.text = String(number)
    }
    @IBAction func select3() {
        number = number*10+3
        label.text = String(number)
    }
    @IBAction func select4() {
        number = number*10+4
        label.text = String(number)
    }
    @IBAction func select5() {
        number = number*10+5
        label.text = String(number)
    }
    @IBAction func select6() {
        number = number*10+6
        label.text = String(number)
    }
    @IBAction func select7() {
        number = number*10+7
        label.text = String(number)
    }
    @IBAction func select8() {
        number = number*10+8
        label.text = String(number)
    }
    @IBAction func select9() {
        number = number*10+9
        label.text = String(number)
    }
    @IBAction func select0() {
        number = number*10
        label.text = String(number)
    }
    
    @IBAction func allclear() {
        number = 0
        number2 = 0
        number3 = 0
        count = 0
        operation = 0
        label.text = String(0)
    }

}