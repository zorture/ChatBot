//
//  ChatBotVC.swift
//  ChatBot
//
//  Created by Kanwar Zorawar Singh Rana on 6/6/17.
//  Copyright © 2017 Kanwar Zorawar Singh Rana. All rights reserved.
//

import UIKit

class ChatBotVC: UIViewController {
    @IBOutlet weak var messageTextTF: UITextField!
    @IBOutlet weak var messageLC: NSLayoutConstraint!
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var messageTexView: UIView!
    
    var showTextAr = ["Hi Mat. How are You","I need To return the product","Do you want to return this product","Yes","What's the issue","It's not working as i expected","Do you need some specific functionality for the product you need or shall i show something else","Yes i want it to to work automatically and work with app as well."]
    
    override func viewDidLoad() {
        
        self.tableView.estimatedRowHeight = 250
        self.tableView.rowHeight = UITableViewAutomaticDimension
        
        let center = NotificationCenter.default
        center.addObserver(self,
                           selector: #selector(self.keyboardWillShow),
                           name: .UIKeyboardWillShow,
                           object: nil)
        
        center.addObserver(self,
                           selector: #selector(self.keyboardWillHide),
                           name: .UIKeyboardWillHide,
                           object: nil)
    }
    
    func keyboardWillShow(){
        print("show")
        messageLC.constant = 300
        view.layoutSubviews()
    }
    
    func keyboardWillHide(){
        print("hide")
    }
    
    @IBAction func sendAction(_ sender: UIButton) {
        //messageTextTF.resignFirstResponder()

    }
}

extension ChatBotVC: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return showTextAr.count+1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell: TableCell!
        
        if(indexPath.row == showTextAr.count){
           let cell1 = tableView.dequeueReusableCell(withIdentifier: "typeCell", for: indexPath) as! TypingTableCell
            return cell1
        }
        
        if indexPath.row%2 == 0{
           cell = tableView.dequeueReusableCell(withIdentifier: "leftCell", for: indexPath) as! TableCell
        }else{
            cell = tableView.dequeueReusableCell(withIdentifier: "rightCell", for: indexPath) as! TableCell
        }
        cell.textLbl?.text = showTextAr[indexPath.row]
        //cell.reLayoutCell()
        return cell
    }
    
    
}
