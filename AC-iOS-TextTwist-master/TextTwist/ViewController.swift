//
//  ViewController.swift
//  TextTwist
//
//  Created by C4Q  on 10/23/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var scrambledLetters: UILabel!
    @IBOutlet weak var textfieldOutlet: UITextField!
    @IBOutlet weak var textBox1: UITextView!
    @IBOutlet weak var textBox2: UITextView!
    @IBOutlet weak var textBox3: UITextView!
    @IBOutlet weak var textBox4: UITextView!
    @IBOutlet weak var wordCounter: UILabel!
    
    var previouslyEntered = [String]()
    var howManyWordsLeft = 0
    let randomInstance = WordData.randomTextTwistInfo()
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let textField = textField.text {
            guard randomInstance.words.contains(textField) else { self.labelText.text = "Incorrect" ;return false }
            guard !previouslyEntered.contains(textField) else { self.labelText.text = "You already entered this word" ;return false }
            self.labelText.text = "Correct!"
            previouslyEntered.append(textField)
            howManyWordsLeft -= 1
            switch textField.count {
            case 3: self.textBox1.text.append("\(textField)\n")
            case 4: self.textBox2.text.append("\(textField)\n")
            case 5: self.textBox3.text.append("\(textField)\n")
            case 6: self.textBox4.text.append("\(textField)\n")
            default: ()
            }
        }
        self.wordCounter.text = "Words left: \(howManyWordsLeft)"
        youWin()
        textfieldOutlet.resignFirstResponder()
        textfieldOutlet.text = ""
        return true
    }
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard CharacterSet(charactersIn: randomInstance.letters).isSuperset(of: CharacterSet(charactersIn: string)) else {
            self.labelText.text = "Cannot enter this character"
            return false
        }
        let currentText = textField.text ?? ""
        guard let stringRange = Range(range, in: currentText) else { return false }
        let updatedText = currentText.replacingCharacters(in: stringRange, with: string)
        return updatedText.count <= 6 //Limits user input to 6 characters.
    }
    
    
    func youWin () {
        if howManyWordsLeft == 0 {
            self.labelText.text = "You win!"
            self.textfieldOutlet.isHidden = true
        }
    }
    
    
    override func viewDidLoad() {
        textfieldOutlet.delegate = self
        howManyWordsLeft = randomInstance.wordCount
        self.wordCounter.text = "Words left: \(howManyWordsLeft)"
        self.scrambledLetters.text = randomInstance.letters
        [textBox1,textBox2,textBox3,textBox4].forEach({ $0.layer.cornerRadius = 15.0})
        [textBox1,textBox2,textBox3,textBox4].forEach({ $0.textAlignment = NSTextAlignment.center })
        [labelText, scrambledLetters].forEach({ $0?.textAlignment = NSTextAlignment.center})
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent //Makes status bar white.
    }
}
