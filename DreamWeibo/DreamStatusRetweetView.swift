//
//  DreamStatusRetweetView.swift
//  DreamWeibo
//
//  Created by 孙龙霄 on 1/20/15.
//  Copyright (c) 2015 孙龙霄. All rights reserved.
//

import UIKit

class DreamStatusRetweetView: UIView {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    
    var nameLabel:UILabel?
    var contentLabel:UILabel?

    override init(){
        super.init()
        
        nameLabel = UILabel()
        
        
        
        self.addSubview(nameLabel!)
        
        
        contentLabel = UILabel()
        self.addSubview(contentLabel!)
        
        
        
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
