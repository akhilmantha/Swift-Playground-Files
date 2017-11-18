//: Playground - noun: a place where people can play

import UIKit

//analyzing the sentence
let tagSchemes = NSLinguisticTagger.availableTagSchemes(forLanguage: "en")
let options : NSLinguisticTagger.Options = [.joinNames , .omitWhitespace ]
let linguisticTagger = NSLinguisticTagger(tagSchemes: tagSchemes, options: Int(options.rawValue))

let sentence = "Xcode 9 sucks"

linguisticTagger.string = sentence

linguisticTagger.enumerateTags(in: NSMakeRange(0, (sentence as NSString).length), scheme: NSLinguisticTagSchemeNameTypeOrLexicalClass, options: options) { (tag, tokenRange, _, _) in
    
    let token = (sentence as NSString).substring(with: tokenRange)
    print("\(token) -> \(tag)")
}

//checking the tag scheme for a language
let tagScheme = [NSLinguisticTagSchemeLanguage]
let tagger = NSLinguisticTagger(tagSchemes: tagScheme, options: 0)
tagger.string = "¿Cuál es tu nombre?"
let language = tagger.tag(at: 0, scheme: NSLinguisticTagSchemeLanguage, tokenRange: nil, sentenceRange: nil)

