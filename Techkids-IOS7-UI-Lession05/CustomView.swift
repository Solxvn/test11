//
//  CustomView.swift
//  Techkids-IOS7-UI-Lession05
//
//  Created by MiuS on 5/7/17.
//  Copyright © 2017 MiuS. All rights reserved.
//

import UIKit

class CustomView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override var canBecomeFirstResponder: Bool{
        return true
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("abcs")
    }

}
