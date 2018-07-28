//
//  ExpandableCell.swift
//  ExpandableCellsExample
//
//  Created by DC on 28.08.2016.
//  Copyright © 2016 Dawid Cedrych. All rights reserved.
//

import UIKit

class ExpandableCell: UITableViewCell {
    
  
    
    
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn1: UIButton!
    
    @IBOutlet weak var btn3: UIButton!
    
    @IBOutlet weak var btn4: UIButton!
    
    @IBOutlet weak var btn5: UIButton!
    
    
    @IBOutlet weak var btn6: UIButton!
    
    @IBOutlet weak var img: UIImageView!
  
    @IBOutlet weak var stackView: UIStackView!
    
    @IBOutlet weak var imgHeightConstraint: NSLayoutConstraint!

    var isExpanded:Bool = false
        {
        didSet
        {
            if !isExpanded {
               self.stackView.isHidden = true
                self.imgHeightConstraint.constant = 0.0
                
            } else {
                self.stackView.isHidden = false
                self.imgHeightConstraint.constant = 128.0
                 //
            }
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        btn1.layer.cornerRadius = 5.0
        btn1.layer.borderWidth = 1.0
        btn1.layer.borderColor = UIColor.black.cgColor
        
        btn2.layer.cornerRadius = 5.0
        btn2.layer.borderWidth = 1.0
        btn2.layer.borderColor = UIColor.black.cgColor
        
        btn3.layer.cornerRadius = 5.0
        btn3.layer.borderWidth = 1.0
        btn3.layer.borderColor = UIColor.black.cgColor
        
        btn4.layer.cornerRadius = 5.0
        btn4.layer.borderWidth = 1.0
        btn4.layer.borderColor = UIColor.black.cgColor
        
        btn5.layer.cornerRadius = 5.0
        btn5.layer.borderWidth = 1.0
        btn5.layer.borderColor = UIColor.black.cgColor
        
        btn6.layer.cornerRadius = 5.0
        btn6.layer.borderWidth = 1.0
        btn6.layer.borderColor = UIColor.black.cgColor
        
        btn1.layer.cornerRadius = 5.0
        btn1.layer.borderWidth = 1.0
        btn1.layer.borderColor = UIColor.black.cgColor
        
        
        
        
        // Initialization code
    }

}
