//
//  NSAttributedString+replaceHTMLTags.swift
//  MWExtensions
//
//  Created by Gene M. Angelo  Jr. on 9/28/17.
//  Credit: https://gist.github.com/dduan/6e60367fa03263da1c29
//
// Example:
//
// let font = UIFont(name: self.font.fontName + "-Bold", size: self.font.pointSize)
//
// self.attributedText = self.attributedText?.replaceHTMLTags(tag: "b", withAttributes: [NSFontAttributeName : font as AnyObject])
//

import Foundation

extension NSAttributedString {
   func replaceHTMLTags(tag: String, withAttributes attributes: [String: AnyObject]) -> NSAttributedString {
      let openTag = "<\(tag)>"
      let closeTag = "</\(tag)>"
      let resultingText: NSMutableAttributedString = self.mutableCopy() as! NSMutableAttributedString
      while true {
         let plainString = resultingText.string as NSString
         let openTagRange = plainString.range(of: openTag)
         if openTagRange.length == 0 {
            break
         }
         
         let affectedLocation = openTagRange.location + openTagRange.length
         
         let searchRange = NSMakeRange(affectedLocation, plainString.length - affectedLocation)
         
         let closeTagRange = plainString.range(of: closeTag, options: .caseInsensitive, range: searchRange)
         
         resultingText.setAttributes(attributes, range: NSMakeRange(affectedLocation, closeTagRange.location - affectedLocation))
         resultingText.deleteCharacters(in: closeTagRange)
         resultingText.deleteCharacters(in: openTagRange)
      }
      return resultingText as NSAttributedString
   }
}
