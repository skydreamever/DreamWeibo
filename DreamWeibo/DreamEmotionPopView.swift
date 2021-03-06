//
//  DreamEmotionPopView.swift
//  DreamWeibo
//
//  Created by 孙龙霄 on 1/27/15.
//  Copyright (c) 2015 孙龙霄. All rights reserved.
//

import UIKit

class DreamEmotionPopView: UIView {

    @IBOutlet weak var emotionView: DreamEmotionView!


    
    class func popView() -> DreamEmotionPopView {
        return (NSBundle.mainBundle().loadNibNamed("DreamEmotionPopView", owner: nil, options: nil) as NSArray ).lastObject as! DreamEmotionPopView
    }
    
    
    func showFromEmotionView(buttonEmotionView:DreamEmotionView){
        
        self.emotionView.setTheEmotion(buttonEmotionView.emotion!)
        
        var window: AnyObject? = (UIApplication.sharedApplication().windows as NSArray).lastObject
        window?.addSubview(self)
        
     
        let center = CGPointMake(buttonEmotionView.center.x, buttonEmotionView.center.y - self.height * 0.3)
        
        self.center = window!.convertPoint(center, fromView: buttonEmotionView.superview)
        
    }
    
    func showFormTouchPlace(buttonEmotionView:DreamEmotionView,point:CGPoint){
        self.emotionView.setTheEmotion(buttonEmotionView.emotion!)
        var window: AnyObject? = (UIApplication.sharedApplication().windows as NSArray).lastObject
        window?.addSubview(self)
        
        let center = CGPointMake(point.x, point.y-35)
        
        self.center = window!.convertPoint(center, fromView: buttonEmotionView.superview)
        
        
    }
    
    func dismiss(){
        self.removeFromSuperview()
    }
    
}
