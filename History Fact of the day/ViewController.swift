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
    //must be greater than 0
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
        -I'll save you some time by telling you that the rest of this file is just hard
         coding and condition checking
    */
    func makeFacts(max: Int)
    {
        //initialize counter to compare with MAX_FACTS whenever a fact is added
        //@return if i = max
        var i:Int = 1

        factsArray[0] = "The shortest war in history was the Anglo-Zanzibar war of 1896.\n" +
                        "It was 38 minutes."
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("Napoleon was once attacked by rabbits.")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("In 1952, Albert Einstein was offered the role of Israel's second president.")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("Karl Marx once worked for the New York Daily Tribune.")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("The \"D\" in D-Day stands for \"Day\".")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("The Constitution of the Confederate States of America\n" +
                          "banned the slave trade.")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("England's King George I was German.")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("The parliament of Iceland is the oldest still acting parliament in the world.\n" +
                "It was established in 930.")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("The largest nuclear bomb ever built caused damage 1,000 km away from it.")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("In 1945, a Japanese man survived an atomic blast in Hiroshima " +
                          "and caught the morning train to his job in Nagasaki, where he survived another.")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("Charles Darwin and Abraham Lincoln were born on the same day.")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("In the Victorian era, there were special tea cups that protected " +
                          "your moustache from getting in your tea.")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("There are scrolls from ancient Japan with drawings that suggest that " +
                          "fart battles took place.")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("The original Cinderella was Egyptian and had fur slippers.")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("Ancient Egyptians believed that the only function of the brain was to produce snot.")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("Leonardo Da Vinci would buy caged animals at the market just to set them free.")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("After being seized by the feds, Al Capone's armored limousine was used to protect FDR.")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("During the Cold War, the US had planned to nuke the moon.")
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
