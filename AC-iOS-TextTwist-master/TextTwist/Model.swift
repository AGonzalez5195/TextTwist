//
//  Model.swift
//  TextTwist
//
//  Created by C4Q  on 10/23/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import Foundation

struct TestTwistInfo {
    let wordCount: Int
    let letters: String
    let words: [String]
}


class WordData {
    static let allInfo: [TestTwistInfo] = [
        TestTwistInfo(wordCount: 26,
                      letters: "cdenno",
                      words: ["conned", "coden","coned", "donne", "nonce","code","coed","cone","conn","deco","done","neon","node","none","once", "cod","con","den","doc","doe","don","end","eon","nod","ode","one"]),
        TestTwistInfo(wordCount: 17,
                      letters: "ehhssu",
                      words: ["hushes", "shush", "hehs","hues","hush","shes","sues","uses", "ess","heh","hes","hue","huh","she","shh","sue","use"]),
        TestTwistInfo(wordCount: 13,
                      letters: "hisswy",
                      words: ["swishy", "hissy","swish", "hiss","whys","wish","wiss","ywis", "his","shy","sis","why","wis"])
    ]
    
    static func randomTextTwistInfo () -> TestTwistInfo {
        if let unwrappedTextTwistInfo = allInfo.randomElement() {
            return unwrappedTextTwistInfo
        } else {
            return TestTwistInfo(wordCount: 0, letters: "h", words: ["hi"])
        }
    }
}
//This function returns a TestTwistInfo type. allInfo is the name of the array of TestTwistInfo data and from this, it picks one of the three elements at random. This randomly selected TestTwistInfo element is unwrapped and saved to the variable 'unwrappedTextTwistInfo' and returned. The else statement is a placeholder that will never run.


















/*
 static let allInfo2: [TestTwistInfo] = [
 TestTwistInfo(wordCount: 27,
 letters:"cdenno",
 sixLetterWords: ["conned"],
 fiveLetterWords: ["coden","coned", "donne", "nonce"],
 fourLetterWords: ["code","coed","cone","conn","deco","done","neon","node","none","once"],
 threeLetterWords: ["cod","con","den","doc","doe","don","end","eon","nod","ode","one"]),
 TestTwistInfo(wordCount: 18,
 letters: "ehhssu", sixLetterWords: ["hushes"],
 fiveLetterWords: ["shush"],
 fourLetterWords: ["hehs","hues","hush","shes","sues","uses"],
 threeLetterWords: ["ess","heh","hes","hue","huh","she","shh","sue","use"]),
 TestTwistInfo(wordCount: 14,
 letters: "hisswy",
 sixLetterWords: ["swishy"],
 fiveLetterWords: ["hissy","swish"],
 fourLetterWords: ["hiss","whys","wish","wiss","ywis"],
 threeLetterWords: ["his","shy","sis","why","wis"])
 ]
 
 private static let rawJSON: [String : [String : Any]] = [
 "cdenno": [ "wordCount": 27,
 "sixLetterWords": ["conned"],
 "fiveLetterWords": ["coden","coned", "donne", "nonce"],
 "fourLetterWords": ["code","coed","cone","conn","deco","done","neon","node","none","once"],
 "threeLetterWords": ["cod","con","den","doc","doe","don","end","eon","nod","ode","one"]
 ],
 "ehhssu": ["wordCount": 18,
 "sixLetterWords": ["hushes"],
 "fiveLetterWords": ["shush"],
 "fourLetterWords": ["hehs","hues","hush","shes","sues","uses"],
 "threeLetterWords": ["ess","heh","hes","hue","huh","she","shh","sue","use"]
 ],
 "hisswy": ["wordCount": 14,
 "sixLetterWords": ["swishy"],
 "fiveLetterWords": ["hissy","swish"],
 "fourLetterWords": ["hiss","whys","wish","wiss","ywis"],
 "threeLetterWords": ["his","shy","sis","why","wis"]
 ]
 ]
 */






