 //
//  DreamStatusCell.swift
//  DreamWeibo
//
//  Created by 孙龙霄 on 1/20/15.
//  Copyright (c) 2015 孙龙霄. All rights reserved.
//

import UIKit

class DreamStatusCell: UITableViewCell {

    
    var statusFrame:DreamStatusFrame?
    
    
    var detailView:DreamStatusDetailView?
    var toolbar:DreamStatusToolBar?
    
    
    override init() {
        super.init()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupStatusDetailView()
        setupToolBar()
        
        self.backgroundColor = UIColor.clearColor()
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupStatusDetailView(){
        
        var detailView = DreamStatusDetailView()
        self.detailView = detailView
        
        
        
        self.contentView.addSubview(detailView)
        
    }
    
    func setupStatusFrame(statusFrame:DreamStatusFrame){
        
        self.statusFrame = statusFrame
        self.detailView?.setupDetailFrame(statusFrame.detailFrame)
        self.toolbar?.frame = statusFrame.toolbarFrame
        self.toolbar?.setupStatus(statusFrame.status)
    }
    
    func setupToolBar(){
        
        var toolbar = DreamStatusToolBar()
        self.toolbar = toolbar

        self.contentView.addSubview(toolbar)
        
    }
    
    class func cellWithTableView(tabelView:UITableView) -> DreamStatusCell?{
        let ID = "status"

        let cell = DreamStatusCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: ID)
        
        return cell as DreamStatusCell
        
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
