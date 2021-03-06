//
//  DreamCommonCellTableViewCell.swift
//  DreamWeibo
//
//  Created by 孙龙霄 on 1/29/15.
//  Copyright (c) 2015 孙龙霄. All rights reserved.
//

import UIKit

class DreamCommonCell: UITableViewCell {

    var numberOfSections:NSInteger!
    let bgView = UIImageView()
    let selectedBgView = UIImageView()
    
    
    var rightArrow:UIImageView!{
        get{
            return UIImageView(image: UIImage(named: "common_icon_arrow"))
        }
    }
    
    var rightSwitch:UISwitch!{
        get{
            return UISwitch()
        }
    }
    
    var rightLabel:UILabel!{
        get{
            var rightLabel = UILabel()
            rightLabel.textColor = UIColor.lightGrayColor()
            rightLabel.font = UIFont.systemFontOfSize(13)
            return rightLabel
        }
    }
    
    var badgeView:DreamBadgeView!{
        get{
            return DreamBadgeView()
        }
    }
    
    

    var indexPath:NSIndexPath!{
        didSet{
            

            if numberOfSections == 1 {
                bgView.image = UIImage.resizeImage("common_card_background")
                selectedBgView.image = UIImage.resizeImage("common_card_background_highlighted")
            }else if indexPath.row == 0 {
                bgView.image = UIImage.resizeImage("common_card_top_background")
                selectedBgView.image = UIImage.resizeImage("common_card_top_background_highlighted")
            }else if indexPath.row == numberOfSections - 1 {
                bgView.image = UIImage.resizeImage("common_card_bottom_background")
                selectedBgView.image = UIImage.resizeImage("common_card_bottom_background_highlighted")
            }else{
                bgView.image = UIImage.resizeImage("common_card_middle_background")
                selectedBgView.image = UIImage.resizeImage("common_card_middle_background_highlighted")

            }
            
          
            
            self.backgroundView = bgView
            self.selectedBackgroundView = selectedBgView
        }
    }

    
    var item:DreamCommonItem!{
        didSet{
            if item.icon != nil {
                self.imageView?.image = UIImage(named: item.icon)
            }
            self.textLabel?.text = item.title
            self.detailTextLabel?.text = item.subtitle
            
            if item.badgeValue != nil {
                let badgeView =  self.badgeView
                badgeView.badgeValue = item.badgeValue
                self.accessoryView = badgeView
            }else if item.isKindOfClass(DreamCommonArrowItem){
                self.accessoryView = self.rightArrow
            }else if item.isKindOfClass(DreamCommonSwitchItem){
                self.accessoryView = self.rightSwitch
            }else if item.isKindOfClass(DreamCommonLabelItem){
                let labelItem = item as! DreamCommonLabelItem
                self.rightLabel.text = labelItem.text
                var attr = NSMutableDictionary()
                attr[NSFontAttributeName] = self.rightLabel.font

                self.rightLabel.size = (labelItem.text as NSString).sizeWithAttributes(attr as [NSObject : AnyObject])
                self.accessoryView = self.rightLabel
            }else{
                self.accessoryView = nil
            }
            
        }
    }
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.textLabel?.font = UIFont.boldSystemFontOfSize(15)
        self.detailTextLabel?.font = UIFont.systemFontOfSize(12)
        self.backgroundColor = UIColor.clearColor()
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    class func cellWithTableView(tableView:UITableView) -> DreamCommonCell{
        let ID = "common"
        var cell: DreamCommonCell? = tableView.dequeueReusableCellWithIdentifier(ID) as? DreamCommonCell
        if cell == nil {
            cell = DreamCommonCell(style: UITableViewCellStyle.Value1, reuseIdentifier: ID)
        }
        return cell!
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.detailTextLabel?.x = CGRectGetMaxX(self.textLabel!.frame) + 10;

    }
    
    
    

}
