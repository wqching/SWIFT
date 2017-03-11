import Foundation

var randomNumber = 1
var userGuess = 1
var continueGuessing = true
var keepPlaying = true
var input = ""

while (keepPlaying) {
    randomNumber = Int(arc4random_uniform(101)) //get a random number between 0-100
    print("The random number to guess is: \(randomNumber)");
    while (continueGuessing) {
        print ("Pick a number between 0 and 100. ")
        input = String(data: FileHandle.standardInput.availableData, encoding:String.Encoding(rawValue: String.Encoding.utf8.rawValue))! as String //get keyboard input
        input = input.replacingOccurrences(of: "\n", with: "", options: String.CompareOptions.literal, range: nil) //strip off the /n
        userGuess = Int(input)!
        if (userGuess == randomNumber) {
            continueGuessing = false
            print("Correct number!");
        }
            //nested if statement
        else if (userGuess > randomNumber){
            //user guessed too high
            print("Your guess is too high");
        }
        else{
            // no reason to check if userGuess < randomNumber. It has to be.
            print("Your guess is too low");
        }
    }
    print("Play Again? Y or N");
    input = String(data: FileHandle.standardInput.availableData, encoding:String.Encoding(rawValue: String.Encoding.utf8.rawValue))! as String
    input = input.replacingOccurrences(of: "\n", with: "", options: NSString.CompareOptions.literal, range: nil)
    
    if (input == "N" || input == "n"){
        keepPlaying = false
    }
    continueGuessing = true
}
