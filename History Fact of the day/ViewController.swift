//
//  ViewController.swift
//  History Fact of the day
//
//  Created by Davis Jordan on 12/17/17.
//  Copyright © 2017 Davis Jordan. All rights reserved.
//

import UIKit


class ViewController: UIViewController
{
    //maximum amount of facts that can be in facts array
    let MAX_FACTS:UInt32 = 50

    //Outlet for text field for fact
    @IBOutlet weak var FactText: UITextView!

    //array of strings that will hold all of the possible facts
    var factsArray:[String] = [" "]

    override func viewDidLoad()
    {
        super.viewDidLoad()

        //makes text field for fact read only
        FactText.isEditable = false

        //initiate factText to be a nice greeting :)
        FactText.text = "Hello!\n" +
                        "Click the button below to learn something new!"

        //initialize all facts in factsArray
        makeFacts(max: Int(MAX_FACTS))
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //IBAction for when button is pressed
    @IBAction func ButtonPressed(_ sender: UIButton)
    {
        print("Button pressed")
        let sub:Int = Int(arc4random_uniform(MAX_FACTS))
        FactText.text = factsArray[sub]
    }

    /*  -I apologize to anyone reading this code at this point
        -the makeFacts function initializes all the facts in the facts array
        -I couldn't really find a better way of doing this other thn hard coding everything
         so sorry for making this unreadable
        -I'll save you some time by telling you that the rest of this file is hard coding
    */
    func makeFacts(max: Int)
    {
        //initialize counter to compare with MAX_FACTS whenever a fact is added
        //@return if i = max
        var i:Int = 1

        factsArray[0] = "This is fact #1"
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("This is fact #2")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("This is fact #3")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("This is fact #4")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("This is fact #5")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("This is fact #6")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("This is fact #7")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("This is fact #8")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("This is fact #9")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("This is fact #10")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("This is fact #11")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("This is fact #12")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("This is fact #13")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("This is fact #14")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("This is fact #15")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("This is fact #16")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("This is fact #17")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("This is fact #18")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("This is fact #19")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("This is fact #20")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("This is fact #21")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("This is fact #22")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("This is fact #23")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("This is fact #24")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("This is fact #25")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("This is fact #26")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("This is fact #27")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("This is fact #28")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("This is fact #29")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("This is fact #30")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("This is fact #31")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("This is fact #32")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("This is fact #33")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("This is fact #34")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("This is fact #35")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("This is fact #36")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("This is fact #37")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("This is fact #38")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("This is fact #39")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("This is fact #40")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("This is fact #41")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("This is fact #42")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("This is fact #43")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("This is fact #44")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("This is fact #45")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("This is fact #46")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("This is fact #47")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("This is fact #48")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("This is fact #49")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("This is fact #50")
    }

}
