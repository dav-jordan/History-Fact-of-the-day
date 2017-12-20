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
    let MAX_FACTS:UInt32 = 5

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
        factsArray[0] = "This is fact #1"
        factsArray.append("This is fact #2")
        factsArray.append("This is fact #3")
        factsArray.append("This is fact #4")
        factsArray.append("This is fact #5")
    }

}
