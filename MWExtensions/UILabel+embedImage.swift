//
//  UILabel+embedImage.swift
//  MWExtensions
//
//  Created by Gene M. Angelo  Jr. on 9/28/17.
//  Copyright © 2017 Mohojo Werks LLC. All rights reserved.
//

import Foundation

extension UILabel {
   
   public func embedImage(with name: String, behindText: Bool) {
      
      let attachment = NSTextAttachment()
      attachment.image = UIImage(named: name)
      let attachmentString = NSAttributedString(attachment: attachment)
      
      guard let text = self.text else { return }
      
      if behindText {
         let strLabelText = NSMutableAttributedString(string: text)
         strLabelText.append(attachmentString)
         self.attributedText = strLabelText
      } else {
         let strLabelText = NSAttributedString(string: text)
         let mutableAttachmentString = NSMutableAttributedString(attributedString: attachmentString)
         mutableAttachmentString.append(strLabelText)
         self.attributedText = mutableAttachmentString
      }
   }
   
   func removeImage() {
      let text = self.text
      self.attributedText = nil
      self.text = text
   }
}
