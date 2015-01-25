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
    var textLabel:UILabel?
    var reweetFrame:DreamStatusRetweetedFrame?
    
    
    override init(){
        super.init()
        
        let font = DreamFont()
        
        nameLabel = UILabel()
        nameLabel?.font = font.DreamStatusRetweetedNameFont
        
        
        self.addSubview(nameLabel!)
        
        
        textLabel = UILabel()
        textLabel?.font = font.DreamStatusRetweetedTextFont
        textLabel?.numberOfLines = 0
        self.addSubview(textLabel!)
        
        
        
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupReweetFrame(reweetFrame:DreamStatusRetweetedFrame){
        self.reweetFrame = reweetFrame
        
        self.frame = reweetFrame.frame
        
        let status = reweetFrame.retweetedStatus
        let user = status.user

        self.reweetFrame = reweetFrame
        self.nameLabel?.frame = reweetFrame.nameFrame
        self.nameLabel?.text = user.name
        
        self.textLabel?.frame = reweetFrame.textFrame
        self.textLabel?.text = status.text

    }
    
    

    
    
}