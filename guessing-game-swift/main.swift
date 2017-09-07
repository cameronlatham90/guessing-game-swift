//
//  main.swift
//  guessing-game-swift
//
//  Created by Devan Allara on 7/13/17.
//  Copyright © 2017 Devan Allara. All rights reserved.
//

import Foundation

//This variable determines if the user is playing the game
var playingGame = true

//This loop will run while the game is running
repeat {
    //Number that the user is trying to guess
    let secretNumber = arc4random_uniform(100)

    //Number of guesses the user has made
    var numberOfGuesses = 5
    
    //Prompt the user for input
    print("Welcome to the number guessing game!")
    print("Please guess a number between 0 and 100!")
    var userGuess = Int(readLine()!)
    
    //Validate the users input
    while userGuess == nil {
        print("Please enter a valid number")
        userGuess = Int(readLine()!)
    }
    //Code that should run if the users guess is not the same as the secret number
    if userGuess! != secretNumber {
        
        repeat {
            if userGuess! > secretNumber {
                numberOfGuesses -= 1
                print("Guess a lower number")
                print("You have \(numberOfGuesses) remaining!")
                userGuess = Int(readLine()!)
            }
            if userGuess! < secretNumber {
                numberOfGuesses -= 1
                print("Guess a higher number")
                print("You have \(numberOfGuesses) remaining!")
                userGuess = Int(readLine()!)
            }
        }
        while userGuess! != secretNumber && numberOfGuesses != 1
    }
    //This code will run when the user has made 5 guesses.
        if numberOfGuesses == 1 && userGuess! != secretNumber {
            print("You ran out of guesses 😭 the correct answer was \(secretNumber). Play again? Y/N?")
            var stillPlaying = readLine()!.uppercased()
            while stillPlaying != "Y" && stillPlaying != "N" {
            print("Please answer with Y or N")
            stillPlaying = readLine()!
            }
        if stillPlaying == "N" {
            playingGame = false
        }
            
    }
    
    //This code will run when the user has correctly guessed the correct number.
    if userGuess! == secretNumber {
        print("You guessed the secret number 🎊🎉🎈🎉🎊!")
        print("Would you like to play again? Y/N")
        
        var stillPlaying = readLine()!.uppercased()
        while stillPlaying != "Y" && stillPlaying != "N" {
            print("Please answer with Y or N")
            stillPlaying = readLine()!
        }
        if stillPlaying == "N" {
            playingGame = false
        }
        //Explain that a case for yes is not required since the loop will run again as long as playingGame is true
    }
}
    while playingGame == true



