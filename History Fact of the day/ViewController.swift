//
//  ViewController.swift
//  History Fact of the day
//
//  Created by Davis Jordan on 12/17/17.
//  Copyright © 2017 Davis Jordan. All rights reserved.
//

import GoogleMobileAds
import UIKit


class ViewController: UIViewController
{
    //maximum amount of facts that can be in facts array
    //must be greater than 0
    let MAX_FACTS:UInt32 = 50

    //Outlet for text field for fact
    @IBOutlet weak var FactText: UITextView!

    //array of strings that will hold all of the possible facts
    var factsArray:[String] = [" "]

    //ad banner view
    var adBanner: GADBannerView!

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

        //initialize ad banner
        adBanner = GADBannerView(adSize: kGADAdSizeBanner)
        adBanner.adUnitID = "ca-app-pub-9251731842452047/3840624000"
        adBanner.rootViewController  = self
        adBanner.load(GADRequest())
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //IBAction for when button is pressed
    @IBAction func ButtonPressed(_ sender: UIButton)
    {
        let sub:Int = Int(arc4random_uniform(MAX_FACTS))
        FactText.text = factsArray[sub]
        adBanner.load(GADRequest())
    }

    //adds banner to view
    //*This code is from the AdMob tutorial for adding banner ads to an app*
    //*I do not claim ownership of the code in this function*
    func addBannerViewToView(_ bannerView: GADBannerView) {
        bannerView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bannerView)
        view.addConstraints(
                [NSLayoutConstraint(item: bannerView,
                        attribute: .bottom,
                        relatedBy: .equal,
                        toItem: view.safeAreaLayoutGuide.bottomAnchor,
                        attribute: .top,
                        multiplier: 1,
                        constant: 0),
                    NSLayoutConstraint(item: bannerView,
                            attribute: .centerX,
                            relatedBy: .equal,
                            toItem: view,
                            attribute: .centerX,
                            multiplier: 1,
                            constant: 0)
                ])
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

        factsArray.append("There is a bar in Ireland that was opened in 900 AD.\n" +
                          " It is currently called Sean's Bar.")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("A singing birthday card has more computing power than the allies in 1945.")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("During World War 1, wolf attacks became such a problem that there was a " +
                          "temporary cease fire to fight off the wolves.")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("Shakespeare invented \"Yo momma\" jokes.")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("High heels were originally made for men.")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("There is no evidence that pirates made people walk the plank.")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("The first ship to use the SOS signal was the Titanic.")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("Grenades were invented in China 1,000 years ago.")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("In 1999, Pepsi, Inc. paid $0.00 income tax.")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("The first Ford cars had engines made by Dodge.")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("Ancient Egyptians used stone slabs as pillows.")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("Before dentures were invented, teeth were pulled from dead soldiers to be used.")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("The largest living organism in the world is a giant mushroom in Oregon.\n " +
                          "It's roots cover over 2,200 acres.")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("Heroin used to be prescribed by doctors for cough and headache.")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("Stalin would have photos retouched so that they didn't have people who " +
                          "had died or been removed from office.")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("Kim Jong-il wrote six operas.")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("The leaning tower of Pisa was never straight. The foundation began to " +
                          "sink after construction on the second floor began.")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("The largest bird to ever exist had a wingspan of 20 feet.")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("In ancient Egypt, servants were smeared with honey to attract flies " +
                          "away from the pharaoh.")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("The Romans used urine as mouthwash.")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("Animals were put on trial in medieval times.")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("In the 16th century, wealthy Europeans would eat corpses, thinking it would " +
                          "cure ailments.")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("A Soviet biologist once attempted to make a \"humanzee\".\n" +
                          "I know what you're thinking, and no he didn't.")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("Saddam Hussein was given the key to Detroit.")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("In early Rome, it was legal for a father to kill anyone in his family.")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("The Swastika was a symbol of good before the Nazis got a hold of it.")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("The Olympics used to give medals for art.")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("English was once a language for \"commoners\" while British elites spoke French.")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("Money was once designed to discourage people from having a lot of it.")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("Tickling may have been used for torture during the Han Dynasty.")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("A good night of sleep used to mean waking up in the middle.")
        if i == max {
            return
        }
        i = i + 1

        factsArray.append("In 1820, Salem held a trial against tomatoes.")
    }

}
