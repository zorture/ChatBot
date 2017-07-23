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
    }
    
    func reLayoutCell() {
        
        let maskPath = UIBezierPath(roundedRect: (textView?.bounds)!,
                                    byRoundingCorners: [.topLeft, .topRight, .bottomLeft],
                                    cornerRadii: CGSize(width: 18.0, height: 0.0))
        let maskLayer = CAShapeLayer()
        maskLayer.path = maskPath.cgPath
        textView?.layer.mask = maskLayer
        
    }
}

class InsetLabel: UILabel {
    
    override func awakeFromNib() {
    }
    
    override func drawText(in rect: CGRect) {
        super.drawText(in: UIEdgeInsetsInsetRect(rect, UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)))

    }
    

}
