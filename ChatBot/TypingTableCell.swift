//
//  TableCell.swift
//  ChatBot
//
//  Created by Kanwar Zorawar Singh Rana on 7/16/17.
//  Copyright © 2017 Kanwar Zorawar Singh Rana. All rights reserved.
//

import UIKit
import QuartzCore

class TypingTableCell: UITableViewCell {
    @IBOutlet weak var dot1: UIView?
    @IBOutlet weak var dot2: UIView?
    @IBOutlet weak var dot3: UIView?
    var animate: Bool = false

    override func awakeFromNib() {
        
        dot1?.layer.masksToBounds = true
        dot1?.layer.cornerRadius = 50
        dot2?.layer.masksToBounds = true
        dot2?.layer.cornerRadius = 50
        dot3?.layer.masksToBounds = true
        dot3?.layer.cornerRadius = 50

    }
    
    func startAnimate() {
        animate = true
        
        dot1?.backgroundColor = UIColor.darkGray
        dot2?.backgroundColor = UIColor.lightGray
        dot3?.backgroundColor = UIColor.gray
        
        /*
        while (animate) {
            
            UIView.animate(withDuration: 0.5, delay: 0.0, options: .allowAnimatedContent, animations: {
                 self.dot1?.backgroundColor = UIColor.darkGray
            }, completion: { (<#Bool#>) in
                <#code#>
            })
        }
 */
        
    }
    func stopAnimate() {
         animate = false
    }

}
