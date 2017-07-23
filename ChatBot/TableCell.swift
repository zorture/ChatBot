//
//  TableCell.swift
//  ChatBot
//
//  Created by Kanwar Zorawar Singh Rana on 7/16/17.
//  Copyright © 2017 Kanwar Zorawar Singh Rana. All rights reserved.
//

import UIKit
import QuartzCore

class TableCell: UITableViewCell {
    @IBOutlet weak var textLbl: InsetLabel?
    @IBOutlet weak var textView: UIView?
    
    override func awakeFromNib() {
        
        textLbl?.layer.masksToBounds = true
        textLbl?.layer.cornerRadius = 5  
        
        /*
        // Add rounded corners
        let maskLayer = CAShapeLayer()
        maskLayer.frame = (textView?.bounds)!
        maskLayer.path = UIBezierPath(roundedRect: textView!.bounds, byRoundingCorners: .topRight , cornerRadii: CGSize(width: 25, height: 25)).cgPath
        textView?.layer.mask = maskLayer
*/
        
    }
    
    func reLayoutCell() {
     //   self.layoutSubviews()
    }
}

class InsetLabel: UILabel {
    
    override func awakeFromNib() {
        //self.frame = CGRect(x: super.frame.origin.x, y: super.frame.origin.y, width: super.frame.size.width+50, height: super.frame.size.height)
    }
    
    override func drawText(in rect: CGRect) {
        super.drawText(in: UIEdgeInsetsInsetRect(rect, UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)))
        //super.frame = CGRect(x: super.frame.origin.x, y: super.frame.origin.y, width: super.frame.size.width+20, height: super.frame.size.height)
    }
    

}
