//
//  TableViewCell.h
//  数字变化
//
//  Created by company on 15/10/30.
//  Copyright © 2015年 company. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell

@property (nonatomic, assign) float num;

@property (weak, nonatomic) IBOutlet UILabel *label;


@end
