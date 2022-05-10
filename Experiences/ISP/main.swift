import Foundation


func startingSenario(){
    print("\u{001B}[2J")
    print("Welcome to The Mystery of the Mansion!")
    sleep(1)
    print("by Pranav Krishnan, Omer Erturk, Sean Kless, David Ortega")
    sleep(2)
    print("Would you like to continue?")
    print("yes or no?")
    let answer = readLine()
    if answer == "yes"{
        sleep(2)
        getName()
        sleep(2)
        getNameOfFriends()
        sleep(1)
        instructions()
        } else {
        if answer == "no"{
            print("Ok then :(")
            sleep(1)
            print("you may need to read this quote:")
            sleep(1)
            print("Have you ever noticed that anybody driving slower than you is an idiot, and anyone going faster than you is a maniac?")
            print("-George Carlin")
            sleep(5)
            
            
        }else {

            print("\u{001B}[2J")
            startingSenario()
        }          
        }
}
func  instructions(){
    print("\u{001B}[2J")
    print("Instructions for the game:")
    print("1.This is a 1 Player game")
    print("2. Required equipment: Computer and keyboard")
    print("3. Read the direction for each of the scenes")
    print("4. To make a choice, type out one of the choices inside of the parentheses. Then press enter")
    print("5. Each choice has its own impact on the story, so make each decision wisely, to reach the end of the story")
    print("6. Finally, make sure to have fun! :)")

    
    print("Did you read the instructions?")
    print("yes or no?")
    let answer = readLine()
    if answer == "yes"{
        sleep(1)
        scene1()
    } else {
        if answer == "no"{
            print("Ok then :(")
            sleep(1)
            print("you may need to read this quote:")
            sleep(1)
            print("Have you ever noticed that anybody driving slower than you is an idiot, and anyone going faster than you is a maniac?")
            print("-George Carlin")
            sleep(5)


        }else {

            print("\u{001B}[2J")
            instructions()
        }
    }

}        

var name = ""
func getName() {
    print("\u{001B}[2J")
    print("Before you enter this adventure, what is your name?")
    if let tempName = readLine() {
        name = tempName
    }
}
var Friend1 = ""
var Friend2 = ""
var Friend3 = ""
func getNameOfFriends() {
    print("\u{001B}[2J")
    print("You have 3 friends, what are their names")
    print("whats friend 1's name?")
    if let tempfriend1 = readLine() {
        Friend1 = tempfriend1
    }
    print("whats friend 2's name?") 
    if let tempfriend2 = readLine() {
        Friend2 = tempfriend2
    }
    print("whats friend 3's name?") 
    if let tempfriend3 = readLine() {
        Friend3 = tempfriend3
    }
}
var choice1 = ""
func scene1() {
    print("\u{001B}[2J")
    sleep(1)
    print("You, \(Friend1), \(Friend2), and \(Friend3), are planning to hang out in a mansion you rented but are unaware that the mansion is haunted due to the likely presence of a mysterious figure.")
    sleep(5)
    print("As you all are having fun inside the mansion, the lights suddenly go out and a nasty thunderstorm emerges. You all decide to split up jobs and you choose to go fix the power.")
    sleep(5)
    print("\(Friend1) chooses to get the food, \(Friend2) gets bedding, and you go fix the lights. \(Friend3) decides they want to come with you. While you and \(Friend3) walk around trying to find the circut breaker.")
    sleep(5)
    print("There is a table with two baseball bats on top and lanterns on bottom. You and \(Friend3) can only carry one bat a lantern. Which do you choose? bat or lantern")
    let decision = readLine()
    if decision == "bat"{
        print("you take the Bat")
        choice1 = "Baseball Bat"
        scene2()
    }else {
        if decision == "lantern" {
            print("you take the lantern")
            choice1 = "lantern"
            scene2()
        }else {
            
            print("\u{001B}[2J")
            scene1()
        }
    }
}
var choice2 = ""
func scene2() {
    print("\u{001B}[2J")
    sleep(1)
    print("You and \(Friend3) decide to take the \(choice1). When walking further down the halls, \(Friend3) notices a basement.")
    sleep(5)
    print("While going down to the basment you notice a dusty power box.")
    sleep(5)
    print("You inspect the box and notice that there was a short circut")
    sleep(5)
    print("There is a red and blue wire and both look like they have been damaged.")
    sleep(5)
    print("Which wire do you fix?(red or blue)")
    
    let decision = readLine()
    if decision == "red"{
        print("you fix the Red wire")
        choice2 = "red"
        sleep(2)
        print("At first, nothing happens")
        sleep(1)
        print(" but after a minute")
        sleep(1)
        print("the lights turn on.")
        sleep(1)
        scene3()
    }else {
        if decision == "blue" {
            print("you fix the Blue wire")
            choice2 == "blue"
            print("At first, the lights flicker for a while.")
            sleep(2)
            print("So you decide to try the red one and it works immediately ")
            sleep(2)
            scene3()
        }else {

            print("\u{001B}[2J")
            scene2()
        }
    }
}
var choice3 = ""
func scene3() {
    print("\u{001B}[2J")
    sleep(1)
    print("You and \(Friend3) decide to head back to the main living room.")
    sleep(3)
    print("While going there, you spot a mysterious figure.")
    sleep(3)
    print("It appears to be running around and suddently starts chasing after \(Friend1). ")
    sleep(3)
    print("Because you brought the \(choice1), you throw it at the figure are it runs off.")
    sleep(3)
    print("You all follow him through the mansion, and end up between 3 rooms that he might have gone through:")
    sleep(3)
    print("left, middle, and right room. Which room do you choose?")
    
    let decision = readLine()
    if decision == "left"{
        print("you go into the left room")
        choice3 = "left"
        sleep(2)
        print("You end up in an empty room with ripped wallpaper and broken chairs but find the figure standing there")
        sleep(3)
        print("You are almost able to catch him but instead run after him again when he escapes the room.")
        sleep(3)
       scene4()
    }else {
        if decision == "right" {
            print("you go into the right room")
            choice3 == "right"
            print("You end up in what seems to be an old laundry room, but you find the figure standing there, or so you think")
            sleep(3)
            print("It turns out that it’s actually a reflection of him and the real one runs out of the left room")
            sleep(3)  
            scene4()
        }else {
            if decision == "middle" {
                print("you go into the middle room")
                choice3 == "middle"
                print("You end up in some children’s room filled with broken toys and other creepy things")
                sleep(3)
                print("It turns out that it was a clone of the mysterious figure and he runs out of the left room")
                sleep(3) 
                scene4()
            }else {     

                print("\u{001B}[2J")
                scene3()
            }
        }
    }    
}
var choice4 = ""
func scene4() {
    print("\u{001B}[2J")
    sleep(1)
    print("As you and your friends go after him, you end up with two suspicious hallways that both could have traps.")
    sleep(3)
    print("You have to pick one hallway to go through since the figure is getting away.")
    sleep(2)
    print("Which hallway do you choose? (left or right)")
    let decision = readLine()
    if decision == "left"{
        print("\(Friend2) gets caught in a huge net above you as you walk through the hall but, you get him down by cutting the rope and keep going")
        choice4 = "Baseball Bat"
        scene5()
    }else {
        if decision == "right" {
            print("\(Friend1) falls in a cage trap under the floor as you walk through the hall but, you pull him out and keep going")
            choice4 = "right"
           scene5()
        }else {

            print("\u{001B}[2J")
            scene1()
        }
    }
}
var endingChoice = ""
func scene5() {
    print("You keep chasing the figure when he trips on a broken table and rolls into a room and you all surround him. ")
    sleep(3)
    print("When you approach him, you realize he has a pure black disguise on, so you take the mask off and under it reveals a butler.")
    sleep(3)
    print(" You assume that the butler is part of this hotel, but wondered why he stayed.")
    sleep(3)
    print("You all ask him a few questions, and he is reluctant to answer, but eventually he gives the truth out.")
    sleep(3)
    print("His name was John, and apparently, before this hotel became haunted there used to be a family living here")
    sleep(3)
    print("They had him as a butler, but after being pushed around for so long, he had enough  and killed everyone")
    sleep(3)
    print("And has been living here ever since. After a few years investors put the house as a rental site.")
    sleep(3)
    print("In order to keep people from finding out about the murders, he trapped people in sound proof rooms so they would never see the sun again.")
    sleep(4)
    print("Your friends are thinking about turning him in to authorities")
    sleep(3)
    print("But you are thinking about giving him another chance.")
    sleep(3)
    print("All your friends think you’re crazy, but you insist on it. What do you choose to do? (freetogo or arrested)")
    let decision = readLine()
    if decision == "freetogo"{
        print("You  decide to arrest him and escape from the house, but the butler makes a few last attempts to catch you before you leave but he fails. ")
        sleep(3)
        print("After a few hours from calling the police, you find the house surounded by cop cars and you see the butler in handcuffs.")
        sleep(3)
        print(" You feel accomplished for surviving the mansion and decide to return after a few days but see  memorial site for all those who have died.")
        sleep(3)
        print("You and all you friends vow to never to return, and continue to search for new places to explore. THE END")
        sleep(3)
        
        endingChoice = "Good Ending"
        ending()
    }else {
        if decision == "arrested" {
            print("You decide to give him another chance.")
            sleep(3)
            print("You tell him that he should just hide in the mansion forever and not interfere with anyone ever agai.")
            sleep(3)
            print("While you are leaving to pack and get out, the butler has one trick up his sleeve and traps all of you.")
            sleep(3)
            print("you can’t get out because \(Friend1) asks the butler if he can make a deal and be set free, the butler agrees. ")
            sleep(3)
            print("As all of you are screaming for help, the butler puts each of you into different glass cages in a secret room as he whistles a tune.")
            sleep(3)
            print("When he is done, you hear him cackling as he leaves the room")
            sleep(3)
            print("This reminds you of how \(Friend1) let you down. That betrayal will replay in your head for years to come. THE END")
            sleep(5)

            
            endingChoice = "Bad Ending"
            ending()
        }else {

            print("\u{001B}[2J")
            scene1()
        }
    }
}
func ending() {
    print("\u{001B}[2J")
    sleep(3)
    print("Thanks for playing \(name)")
    sleep(2)
    print("You have achived the \(endingChoice) ending!")
    sleep(2)
    print("You have solved the Mystery of The Mansion")
    sleep(5)
    print("\u{001B}[2J")
}
startingSenario()


                   
