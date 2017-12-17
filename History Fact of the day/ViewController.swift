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
    let MAX_FACTS:UInt32 = 200

    //Outlet for text field for fact
    @IBOutlet weak var FactText: UITextView!

    //array of strings that will hold all of the possible facts
    var factsArray:[String] = [" "]

    override func viewDidLoad()
    {
        super.viewDidLoad()

        //makes text field for fact read only
        FactText.isEditable = false

        //initialize all facts in factsArray
        //this loop is just for debugging
        //TODO: *This works* hardcode in facts after it is clear that it works
        var i = 0
        while i < MAX_FACTS
        {
            //print to confirm append for debugging
            print("Appending fact #\(i+1)")

            //append to string
            factsArray.append("fact #\(i+1)")
            i = i+1
        }
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
    

}
